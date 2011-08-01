#!/usr/bin/python
import sys, os
from PyQt4 import QtGui
from PyQt4.QtCore import QObject, QString, SIGNAL
from main import  Ui_MainWindow



def event_browse_click():
    filename= QtGui.QFileDialog().getOpenFileName(None, "Select ISO", "", "ISO image (*.iso)")
    if filename:
        myapp.ui.pathEdit.setText(filename)

def event_start_click():
    filename= myapp.ui.pathEdit.text()
    m= QtGui.QErrorMessage()
    if not filename:
        QtGui.QMessageBox.critical(myapp, "Please select a ISO image", "Please select a ISO image")
    elif not os.path.exists(filename):
        QtGui.QMessageBox.critical(myapp, "Could not open the selected ISO image", "Could not open the selected ISO image")
    else:
        #all good
        myapp.ui.progressBar.setValue(100)



class MyMainWindow(QtGui.QMainWindow):
    def __init__(self, parent=None):
        QtGui.QMainWindow.__init__(self)
        self.ui= Ui_MainWindow()
        self.ui.setupUi(self)

    def setupSignals(self):
        QObject.connect(self.ui.browseButton, SIGNAL("clicked()"), event_browse_click)
        QObject.connect(self.ui.startButton, SIGNAL("clicked()"), event_start_click)



if __name__ == "__main__":
    app = QtGui.QApplication(sys.argv)
    myapp = MyMainWindow()
    myapp.setupSignals()
    myapp.show()
    sys.exit(app.exec_())


