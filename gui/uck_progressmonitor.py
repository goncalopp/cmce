import uck
import time
import process_utils
import logging

DEFAULT_TICK_STR= "tick"

class ProgressProfile(object):
    '''represents a progress profile. given N "ticks" (occurence of a callback, for example), and a list of N elements with the relative weight of the contribution of each tick to the total progress'''
    def __init__(self, tick_number, tick_weights, tick_str=DEFAULT_TICK_STR):
         assert len(tick_weights)==tick_number
         self.n= tick_number
         self.weights= tick_weights
         self.tick_str= tick_str

def profile(function, args, kwargs, tick_str=DEFAULT_TICK_STR):
    '''creates a new ProgressPofile for the given function with the given args'''
    global tick_number
    global weights
    global current_time
    logging.debug("creating new ProgressProfile...")
    tick_number=0
    weights=[]
    current_time= time.time()
    def add_tick(x):
        global tick_number
        global weights
        global current_time
        if x==tick_str:
            tick_number+=1
            timedelta= time.time()-current_time
            current_time+= timedelta
            weights.append(timedelta)
            logging.debug("PROFILING:"+str( tick_number) +str( timedelta))
        else:
            pass
            logging.debug("OTHER STRING:"+str( x))
    process_utils.run_function_with_callback_on_output(function, args, kwargs, add_tick)
    return ProgressProfile(tick_number, weights, tick_str)


def run(function, args, kwargs, profile, progress_callback):
    '''runs the given function with the given arguments, using the given ProgressProfile to estimate the progress. Calls progress_callback with a float progress vector (0..1) each time the progress is updated'''
    assert isinstance(progress_profile, ProgressProfile)
    assert callable(progress_callback)
    progress=0
    total=float( sum(progress_profile.weights))
    tick_index=0
    def monitor(x):
        if x==profile.tick_str:
            progress+= profile.weights[tick_index]
            tick_index+=1
            progress_vector= progress / total
            callback( progress_vector )
        else:
            #can have other strings...
            pass
    process_utils.run_function_with_callback_on_output(function, args, kwargs, monitor)

