import sys, os
from PyQt4 import QtGui, QtCore
from PyQt4.QtCore import QObject, QString, SIGNAL

def baseDialog(parent, title, text, widget_f, buttons):
    '''widget_code and button_code are both functions. widget_code() should return the main widget (i.e: a QListWidget for inputing a choice) and buttons_code() must return a tuple of buttons''' 
    class TmpDialog(QtGui.QDialog):
        def __init__(self, parent):
            QtGui.QDialog.__init__(self)
            self.resize(300, 300)
            self.setWindowTitle(title)
            self.returnValue=None

            self.widget= widget_f()
            label= QtGui.QLabel(text)

            layout= QtGui.QVBoxLayout(self)
            widgetNButtonLayout= QtGui.QHBoxLayout()
            buttonLayout= QtGui.QVBoxLayout()

            layout.addWidget(label)
            layout.addLayout(widgetNButtonLayout)
            widgetNButtonLayout.addWidget(self.widget)
            widgetNButtonLayout.addLayout(buttonLayout)
            globals()['dialog']= self
            for button_text, event in buttons:
                button= QtGui.QPushButton()
                button.setText(button_text)
                QObject.connect(button, QtCore.SIGNAL('clicked()'), event)
                buttonLayout.addWidget(button)
            buttonLayout.addStretch()

        def saveReturn(self):
            self.returnValue= self.widget.returnValue()

    dialog = TmpDialog(parent)
    dialog.exec_()
    return dialog.returnValue


def dynamic_button_event():
    exec QObject.sender().event_code


OK_CODE= lambda : (globals()['dialog'].saveReturn(), globals()['dialog'].done(0))
CANCEL_CODE= lambda : globals()['dialog'].done(0)

def choice(str_list, text="Select a option:", title="Select a option", buttons= (("OK",OK_CODE),), multi_choice=False, return_index=False):
    #return QtGui.QInputDialog.getItem(None, title, text, str_list)._exec()
    model= QtGui.QStandardItemModel()
    for s in str_list:
        item= QtGui.QStandardItem(s)
        if multi_choice:
            item.setCheckable(True)
        model.appendRow(item)
    def create_widget():
        w= QtGui.QListView()
        w.setModel(model)
        #if multi_choice:
        #    w.setSelectionMode(QtGui.QAbstractItemView.MultiSelection)
        def returnValue():
            items= [model.item(i) for i in xrange(model.rowCount())]
            if multi_choice:
                texts= [item.text() for item in items if item.checkState()]
            else:
                
                texts= [items[mi.row()].text() for mi in w.selectedIndexes()]
            if return_index:
                return map(str_list.index, map(unicode, texts))
            else:
                return texts
        w.returnValue= returnValue
        return w
    qt_str_list= baseDialog( None, title, text, create_widget, buttons)
    print qt_str_list
    return map(unicode, qt_str_list)

def force_choice(cant_cancel=True, return_at_least_one= True, *args, **kwargs):
    '''repeats choice() until conditions are met'''
    while True:
        ret= choice(*args, **kwargs)
        if ret is not None:
            if len(ret)>0:
                break
            else:
                if not return_at_least_one:
                    break
        else:
            if not cant_cancel:
                break
    return ret
