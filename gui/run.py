#!/usr/bin/python   i

PROGRESSPROFILE_FILE= "progress_profile.pickle"
VNC_PROCESS= None

import sys, os
import pickle
import logging
import threading, subprocess

from PyQt4 import QtGui
from PyQt4.QtCore import QObject, QString, SIGNAL

from main import  Ui_MainWindow
from gui_library.input  import choice, force_choice
from gui_library.output import error
from process_utils import run_function_with_callback_on_output
import uck
import uck_progressmonitor

logging.basicConfig(level=logging.DEBUG)

def check_iso(filename):
    if not filename:
        error(myapp, "Please select a ISO image")
        return False
    if not os.path.exists(filename):
       error(myapp, "Could not open the selected ISO image")
       return False
    return True

def run_vnc_process(host, port="5900"):
    global VNC_PROCESS
    assert VNC_PROCESS is None
    VNC_PROCESS= subprocess.Popen("vncviewer {host}:{port}".format(host=host, port=port), shell=True)

def kill_vnc_process():
    assert not VNC_PROCESS is None
    VNC_PROCESS.kill()
    VNC_PROCESS= None

def choose_languages():
    language_packs= force_choice(False, True, uck.available_language_packs(), "Choose which languages you want your system to support", multi_choice=True)
    boot_languages= force_choice(False, True, uck.available_boot_languages(), "Choose which languages you want your system to support while initializing", multi_choice=True)
    default_boot_language= force_choice(False, True, boot_languages, "Choose the default (system initialization) language")
    if not (language_packs and boot_languages and default_boot_language):
        return None
    else:
        return (language_packs, boot_languages, default_boot_language)

def start_customization():
    iso_file= get_iso()
    cust_dir= os.path.expanduser("~/tmp")   #MUST be absolute path
    if not check_iso(iso_file):
         return
    args= {"remaster_dir":cust_dir, "source_iso":iso_file}
    if change_language():
        lp, bl, dbl= choose_languages()
        args.update({"language_packs":lp, "livecd_locales":bl, "livecd_locale": dbl})
    if  run_graphic_customization():
        args.update({"run_graphical_customization":True})

    disable_interface()
    
    def run_function():
        print "CUSTOMIZATION STARTED WITH ARGS:", args
        custom_signals= ["run_vnc_signal", "stop_vnc_signal"]
        def progress_callback(x):
            if x=="run_vnc_signal":
                run_vnc_process("localhost", "21693")
            elif x=="stop_vnc_signal":
                kill_vnc_process()
            else:
                if type(x)==float:
                    set_progress(x)
                else:
                    logging.warn("unknown monitored string received: "+x)
        do_profile=False
        if do_profile:
            profile= uck_progressmonitor.profile( uck.customization, (), args)
            print "profile:",profile
            pickle.dump( profile, open(PROGRESSPROFILE_FILE, "wb" ))
        else:
            profile= pickle.load( open( PROGRESSPROFILE_FILE, "rb"))
            uck_progressmonitor.run( uck.customization, (), args, profile, progress_callback, ["run_vnc_signal", "stop_vnc_signal"] )
        enable_interface()
    t1= threading.Thread(target= run_function)
    t1.start()

#------GUI FUNCTIONS-------------------------------------------------

def disable_interface():
    myapp.startButton.setEnabled( False )

def enable_interface():
    myapp.startButton.setEnabled( True )

def browse_iso():
    filename= QtGui.QFileDialog().getOpenFileName(None, "Select ISO", "", "ISO image (*.iso)")
    if filename:
        myapp.pathEdit.setText(filename)

def get_iso():
    return myapp.pathEdit.text()

def set_progress(fraction):
    assert 0<=fraction<=1
    myapp.progressBar.setValue( int(100*fraction) )

def change_language():
    return myapp.languageCheck.isChecked()

def run_graphic_customization():
    return myapp.graphicalCheck.isChecked()

class MyMainWindow(Ui_MainWindow, QtGui.QMainWindow):
    def __init__(self):
        QtGui.QMainWindow.__init__(self)
        self.setupUi(self)
        self.setupSignals()

    def setupSignals(self):
        QObject.connect(self.browseButton, SIGNAL("clicked()"), browse_iso)
        QObject.connect(self.startButton, SIGNAL("clicked()"), start_customization)



if __name__ == "__main__":
    app = QtGui.QApplication(sys.argv)
    myapp = MyMainWindow()
    myapp.show()
    sys.exit(app.exec_())


