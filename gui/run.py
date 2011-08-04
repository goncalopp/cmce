#!/usr/bin/python
import sys, os
from PyQt4 import QtGui
from PyQt4.QtCore import QObject, QString, SIGNAL
from main import  Ui_MainWindow
from gui_library.input  import choice
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

def start_customization():
    iso_file= get_iso()
    if not check_iso(iso_file):
         return
    if change_language():
        packs= choice(uck.available_language_packs(), "Which languages do you want your system to support?", multi_choice=True)
        print packs, "PACKS"
        boot_languages= choice( uck.available_boot_languages(), "Which languages do you want your system to support while initializing?", multi_choice=True)
        print boot_languages, "boot"

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


