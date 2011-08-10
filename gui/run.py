#!/usr/bin/python
import sys, os
from PyQt4 import QtGui
from PyQt4.QtCore import QObject, QString, SIGNAL
from main import  Ui_MainWindow
from gui_library.input  import choice, force_choice
from gui_library.output import error
import uck

def check_iso(filename):
    if not filename:
        error(myapp, "Please select a ISO image")
        return False
    if not os.path.exists(filename):
       error(myapp, "Could not open the selected ISO image")
       return False
    return True

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
    if not check_iso(iso_file):
         return
    args= {"remaster_dir":"tmp", "source_iso":iso_file}
    if change_language():
        lp, bl, dbl= choose_languages()
        args.update({"run_language_customization":True, "language_packs":lp, "livecd_locales":bl, "livecd_locale": dbl})
    if  run_graphic_customization():
        args.update({"run_graphical_customization":True})

    print "CUSTOMIZATION STARTED WITH ARGS:", args
    c_process= uck.run_customization(**args)
    while True:
        for pipe in (c_process.stdout, c_process.stderr):
            l= pipe.readline()
            if len(l):
                print l
        if not c_process.poll() is None:
            print "RETURN CODE: ", c_process.wait()
            break

#------GUI FUNCTIONS-------------------------------------------------


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


