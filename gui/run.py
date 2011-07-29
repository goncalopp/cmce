#!/usr/bin/python

import sys
from PyQt4 import QtCore, QtGui
from main import  Ui_MainWindow

class MyMainWindow(QtGui.QMainWindow):
    def __init__(self, parent=None):
        QtGui.QMainWindow.__init__(self)
        self.ui= Ui_MainWindow()
        self.ui.setupUi(self)
        #QtCore.QObject.connect(self.ui.pushButton, QtCore.SIGNAL("clicked()"), self.ui.textEdit.clear )
        #QtCore.QObject.connect(self.ui.lineEdit, QtCore.SIGNAL("returnPressed()"), self.add_entry)

'''
myapp.ui.progressBar.setValue(4)
print QtGui.QFileDialog().getOpenFileName(None, "Select ISO", "", "ISO image (*.iso)")
'''
if __name__ == "__main__":
    app = QtGui.QApplication(sys.argv)
    myapp = MyMainWindow()
    myapp.show()
    sys.exit(app.exec_())


