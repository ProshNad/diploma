#-------------------------------------------------
#
# Project created by QtCreator 2021-03-21T16:58:18
#
#-------------------------------------------------

QT       += core gui xml opengl svg
CONFIG += c++14

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = bezie_and_triangulation
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp

HEADERS += \
        mainwindow.h

FORMS += \
        mainwindow.ui


unix:!macx: LIBS += -L$$PWD/../Загрузки/CGAL-5.1.2/lib/ -lCGAL_Qt5_moc_and_resources

INCLUDEPATH += $$PWD/../Загрузки/CGAL-5.1.2/include
DEPENDPATH += $$PWD/../Загрузки/CGAL-5.1.2/include

unix:!macx: PRE_TARGETDEPS += $$PWD/../Загрузки/CGAL-5.1.2/lib/libCGAL_Qt5_moc_and_resources.a

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../usr/lib/x86_64-linux-gnu/release/ -lgmp
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../usr/lib/x86_64-linux-gnu/debug/ -lgmp
else:unix: LIBS += -L$$PWD/../../../usr/lib/x86_64-linux-gnu/ -lgmp

INCLUDEPATH += $$PWD/../../../usr/lib/x86_64-linux-gnu
DEPENDPATH += $$PWD/../../../usr/lib/x86_64-linux-gnu

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/release/libgmp.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/debug/libgmp.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/release/gmp.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/debug/gmp.lib
else:unix: PRE_TARGETDEPS += $$PWD/../../../usr/lib/x86_64-linux-gnu/libgmp.a



unix:!macx: LIBS += -L$$PWD/../Загрузки/libQGLViewer-2.7.2/QGLViewer/ -lQGLViewer-qt5

INCLUDEPATH += $$PWD/../Загрузки/libQGLViewer-2.7.2/QGLViewer
DEPENDPATH += $$PWD/../Загрузки/libQGLViewer-2.7.2/QGLViewer
