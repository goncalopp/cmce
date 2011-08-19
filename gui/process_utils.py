import subprocess
from collections import namedtuple
import multiprocessing
import Queue
from select import select
import os, sys

def shell(s, inp=None, assert_returncode=False):
    '''executes a shell command. Returns a 3-element tuple with the whole texts of stdout, stderr, and the return code. Optionally, you can pass a string to feed to stdin (inp).
    assert_returncode makes this function throw a exception if the returncode != 0
    '''
    shellreturn= namedtuple("shellreturn", "stdout stderr returncode")
    p= subprocess.Popen(s, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, stdin=subprocess.PIPE)
    if inp:
        p.stdin.write(inp)
    p.stdin.close()
    o,e,r=  p.stdout.read(), p.stderr.read(), p.wait()
    if assert_returncode and r!=0:
        raise Exception("return code != 0 in command: \n\n"+s+"\n\nstdout:\n"+o+"\n\nstderr:\n"+e+"\n\nreturncode:\n"+str(r))
    return shellreturn(o,e,r)


#deprecated? use multiprocessing module?
def run_function_as_process(function, args, kwargs, pipes_tuple=(True, True, True)):
    '''given a function and its arguments, runs the function on a process.
    Also, accepts a 3-element tuple, indicating which streams you want (stdin, stdout, stderr).
    returns a 4 element tuple, containing the PID, and the streams you requested (or None if one not)'''
    devnull= open("/dev/null", "rw")
    def open_fd(i, fd):
        d= {0:'r', 1:'w'}
        return os.fdopen(fd, d[i])
    read_streams, write_streams= zip(*[[open_fd(*t) for t in enumerate(os.pipe())] if do_pipe else (open("/dev/null", "r"),open("/dev/null", "w")) for do_pipe in pipes_tuple])
    pid= os.fork()
    if pid==0:
        map(file.close, read_streams)
        sys.stdin, sys.stdout, sys.stderr= write_streams
        returncode= function( *args, **kwargs )
        if type(returncode)!=int:
            returncode= 0
        os._exit( returncode )
    else:
        map(file.close, write_streams)
        return (pid,)+read_streams


class FileFromQueue:
    '''this class emulates a file, and queues every line written'''
    def __init__(self, queue):
        self.queue= queue
        self.buffer=""
    def write(self, x, encoding=sys.getdefaultencoding()):
        if isinstance(x, bytes):
            x = x.decode(encoding)
        try:
            i= x.index("\n")
            self.queue.put(self.buffer+x[:i])
            self.buffer= x[i+1:]
        except ValueError:
            self.buffer+=x
    def flush(self):
        pass

def redirect_output_and_run(function, args, kwargs, file_object):
    assert type(args)==list or type(args)==tuple
    assert type(kwargs)==dict
    sys.stdout= sys.stderr= file_object
    try:
        function(*args, **kwargs)
    except Exception:
        import traceback
        traceback.print_exc()


def run_function_with_callback_on_output(function, args, kwargs, callback):
        '''See run_function_as_process. Executes the function, calling the callback function with each (stdout or stderr) line of output. Blocks until function has finished'''
        q= multiprocessing.Queue()
        f= FileFromQueue(q)
        p= multiprocessing.Process(target=redirect_output_and_run, args=(function, args, kwargs, f))
        p.start()
        while p.is_alive():
            try:
                line= q.get(block=True, timeout=0.5)
                callback(line)
            except :
                pass
        p.join()    #can't hurt


