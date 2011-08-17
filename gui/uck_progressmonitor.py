import uck
import time

class ProgressProfile(object):
    '''represents a progress profile. given N "ticks" (occurence of a callback, for example), and a list of N elements with the relative weight of the contribution of each tick to the total progress'''
    def __init__(self, tick_number, tick_weights):
         assert len(tick_weights)==tick_number
         self.n= tick_number
         self.weights= tick_weights

def profile_customization(**kwargs):
    tick_number=0
    weights=[]
    def add_tick(x):
        if x=="tick":
            tick_number+=1
            timedelta= time.time()-current_time
            current_time+= timedelta
            weights.append(timedelta)
    uck.start_customization(add_tick, **kwargs)
    return ProgressProfile(tick_number, weights)

def start_monitored_customization(profile, callback, **kwargs):
    assert isinstance(progress_profile, ProgressProfile)
    assert callable(progress_callback)
    progress=0
    total=float( sum(progress_profile.weights))
    tick_index=0
    def monitor(x):
        if x=="tick":
            progress+= profile[tick_index]
            tick_index+=1
            progress_percentage= progress / total
            callback( progress_percentage )
        else:
            #can have other strings...
            pass
    uck.start_customization(monitor, **kwargs)


