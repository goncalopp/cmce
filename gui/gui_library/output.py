from PyQt4 import QtGui, QtCore

def error(parent, text, title="Error"):
    QtGui.QMessageBox.critical(parent, title, text)
