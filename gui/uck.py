import subprocess
import os


if os.path.isdir("uck"):
    assert os.path.isfile("uck/libraries/gui.sh")
    SCRIPTS_DIR= "uck"
    LIBRARIES_DIR= SCRIPTS_DIR+"/libraries"
elif os.path.isdir("/usr/lib/uck"):
    SCRIPTS_DIR= "/usr/bin"
    LIBRARIES_DIR= "/usr/lib/uck"
elif os.path.isdir("/usr/local/lib/uck"):
    SCRIPTS_DIR= "/usr/local/bin"
    LIBRARIES_DIR= "/usr/local/lib/uck"
else:
    raise Exception("UCK doesn't seem to be installed")



def shell(s, inp=None, stderr=False):
    p= subprocess.Popen(s, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, stdin=subprocess.PIPE)
    if inp:
        p.stdin.write(inp)
    p.stdin.close()
    outp= p.stdout.read()
    if stderr:
        outp= (outp, p.stderr.read())
    return outp


def available_language_packs():
    return shell('''apt-cache pkgnames language-support | egrep '^language-support-.{2,7}$' | cut -b 18- | sort''').split("\n")

def available_boot_languages():
    return open(LIBRARIES_DIR+"/langlist").read().split("\n")

