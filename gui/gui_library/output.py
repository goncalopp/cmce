from PyQt4 import QtGui, QtCore

def error(parent, text, title="Error"):
    QtGui.QMessageBox.critical(parent, title, text)

def info(parent, text, title="Information"):
    QtGui.QMessageBox.information(parent, title, text)
