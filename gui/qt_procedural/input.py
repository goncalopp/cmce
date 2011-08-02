#!/usr/bin/python
import sys, os
from PyQt4 import QtGui, QtCore
from PyQt4.QtCore import QObject, QString, SIGNAL

def baseDialog(parent, title, text, widget_f, extra_buttons_f):
    '''widget_code and button_code are both functions. widget_code() should return the main widget (i.e: a QListWidget for inputing a choice) and buttons_code() must return a tuple of buttons''' 
    class TmpDialog(QtGui.QDialog):
        def __init__(self, parent):
            widget, extra_buttons= widget_f(), extra_buttons_f()
            QtGui.QDialog.__init__(self)
            self.resize(300, 300)
            self.setWindowTitle(title)
            self.returnValue=None

            self.widget= widget
            label= QtGui.QLabel("text")
            okButton = QtGui.QPushButton()
            okButton.setText("OK")
            def okButtonClick():
                self.saveReturn()
                self.done(0)
            self.connect(okButton, QtCore.SIGNAL('clicked()'), okButtonClick)
            buttons= [okButton]+list(extra_buttons)

            layout= QtGui.QVBoxLayout(self)
            widgetNButtonLayout= QtGui.QHBoxLayout()
            buttonLayout= QtGui.QVBoxLayout()

            layout.addWidget(label)
            layout.addLayout(widgetNButtonLayout)
            widgetNButtonLayout.addWidget(widget)
            widgetNButtonLayout.addLayout(buttonLayout)
            for b in buttons:
                buttonLayout.addWidget(b)
            buttonLayout.addStretch()

        def saveReturn(self):
            self.returnValue= self.widget.returnValue()

    dialog = TmpDialog(parent)
    dialog.exec_()
    return dialog.returnValue



def choice(parent, title, text, str_list, multi_select=False, return_index=False):
    #return QtGui.QInputDialog.getItem(parent, title, text, str_list)._exec()
    def create_widget():
        w= QtGui.QListWidget()
        [w.addItem(s) for s in str_list]
        if multi_select:
            w.setSelectionMode(QtGui.QAbstractItemView.MultiSelection)
        def returnValue():
            texts= [i.text() for i in w.selectedItems()]
            if return_index:
                return map(str_list.index, map(unicode, texts))
            else:
                return texts
        w.returnValue= returnValue
        return w
    def create_buttons():
        b= ( QtGui.QPushButton(), )
        return b
    return baseDialog( parent, title, text, create_widget, create_buttons )
