TARGET = MultiRTSP
TEMPLATE    = app

QT          += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

SOURCES     += main.cpp \
               DemoPlayer.cpp

HEADERS     += DemoPlayer.h

FORMS       += DemoPlayer.ui

LIBS        += -lvlc-qt -lvlc-qt-widgets

# Edit below for custom library location
#LIBS     += -L/home/tadej/workspace/tanoprojects/install/linux-devel/lib -lvlc-qt -lvlc-qt-widgets
#INCLUDEPATH += /home/tadej/workspace/tanoprojects/install/linux-devel/include

# Copy required dlls on windows with install target
win32 {
        CONFIG(debug, debug|release) {
                LIBS += -LE:/LIB/libvlc-qt_0.10.0_win32_mingw/lib -llibvlc-qt -llibvlc-qt-widgets
                INCLUDEPATH += E:/LIB/libvlc-qt_0.10.0_win32_mingw/include
                vlcQtDlls.path = $$OUT_PWD/debug
                vlcQtDlls.files = E:/LIB/libvlc-qt_0.10.0_win32_mingw/bin/libvlc*
                vlcQtDlls.files += E:/LIB/libvlc-qt_0.10.0_win32_mingw/bin/plugins
        } else {
                LIBS += -LE:/LIB/libvlc-qt_0.10.0_win32_mingw/lib -llibvlc-qt -llibvlc-qt-widgets
                INCLUDEPATH += E:/LIB/libvlc-qt_0.10.0_win32_mingw/include
                vlcQtDlls.path = $$OUT_PWD/release
                vlcQtDlls.files = E:/LIB/libvlc-qt_0.10.0_win32_mingw/bin/libvlc*
                vlcQtDlls.files += E:/LIB/libvlc-qt_0.10.0_win32_mingw/bin/plugins
        }
        INSTALLS += vlcQtDlls
}

DISTFILES +=
