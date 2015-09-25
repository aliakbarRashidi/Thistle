QT += widgets gui
TEMPLATE = lib

release:TARGET = Kernel
debug:TARGET = Kerneld

DEFINES += THISTLE_KERNEL_LIBRARY

DESTDIR = ../

QMAKE_CXXFLAGS += -Wno-unused-function -Wall

SOURCES += \
	../../Thistle/kernel/private/itemstyle_p.cpp \
	../../Thistle/kernel/itemstyle.cpp \
	../../Thistle/kernel/private/itemdelegate_p.cpp \
	../../Thistle/kernel/itemdelegate.cpp \
	../../Thistle/kernel/private/abstractitemview_p.cpp \
	../../Thistle/kernel/abstractitemview.cpp

HEADERS += \
	../../Thistle/kernel/private/itemstyle_p.h \
	../../Thistle/kernel/itemstyle.h \
	../../Thistle/kernel/private/itemdelegate_p.h \
	../../Thistle/kernel/itemdelegate.h \
	../../Thistle/kernel/global.h \
	../../Thistle/kernel/private/abstractitemview_p.h \
	../../Thistle/kernel/abstractitemview.h
