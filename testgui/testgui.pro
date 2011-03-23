#-------------------------------------------------
#
# Project created by QtCreator 2011-03-19T14:02:02
#
#-------------------------------------------------

QT       += core gui

TARGET = testgui
TEMPLATE = app


SOURCES += main.cpp\
        psmovetestgui.cpp \
    psmovesensorscene.cpp \
    devicechooserdialog.cpp

HEADERS  += psmovetestgui.h \
    psmovesensorscene.h \
    devicechooserdialog.h

FORMS    += psmovetestgui.ui \
    devicechooserdialog.ui

RESOURCES +=

SOURCES += ../qt/psmoveqt.cpp
HEADERS += ../qt/psmoveqt.hpp

SOURCES += ../psmove.c
HEADERS += ../psmove.h

HEADERS += ../hidapi/hidapi/hidapi.h

INCLUDEPATH += ..
INCLUDEPATH += ../qt
INCLUDEPATH += ../hidapi/hidapi

macx {
    SOURCES += ../hidapi/mac/hid.c
    LIBS += -framework IOKit -framework CoreFoundation -framework IOBluetooth
    ICON = psmove.icns
}
