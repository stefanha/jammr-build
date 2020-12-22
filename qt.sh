#!/bin/bash
. functions

download "https://download.qt.io/archive/qt/5.14/5.14.2/single/qt-everywhere-src-5.14.2.tar.xz" "109dd41023c5df59b1aaf6d04211b473dea970ea"
cd build
rm -rf qt-everywhere-*
tar xf ../download/qt-everywhere-*.tar.xz
cd qt-everywhere-*
./configure -verbose \
	    -prefix "$prefix" \
	    -release \
	    -opensource \
	    -confirm-license \
	    -system-zlib \
	    -qt-libpng \
	    -qt-libjpeg \
	    -qt-freetype \
	    -qt-pcre \
	    -nomake tests \
	    -nomake examples \
	    -no-rpath \
	    -pkg-config \
	    -no-dbus \
	    -no-glib \
	    -skip qt3d \
	    -skip qtactiveqt \
	    -skip qtandroidextras \
	    -skip qtcharts \
	    -skip qtconnectivity \
	    -skip qtdatavis3d \
	    -skip qtdeclarative \
	    -skip qtgamepad \
	    -skip qtgraphicaleffects \
	    -skip qtlocation \
	    -skip qtlottie \
	    -skip qtmultimedia \
	    -skip qtnetworkauth \
	    -skip qtpurchasing \
	    -skip qtquick3d \
	    -skip qtquickcontrols \
	    -skip qtquickcontrols2 \
	    -skip qtquicktimeline \
	    -skip qtremoteobjects \
	    -skip qtscript \
	    -skip qtscxml \
	    -skip qtsensors \
	    -skip qtserialbus \
	    -skip qtserialport \
	    -skip qtspeech \
	    -skip qtvirtualkeyboard \
	    -skip qtwayland \
	    -skip qtwebchannel \
	    -skip qtwebengine \
	    -skip qtwebglplugin \
	    -skip qtwebsockets \
	    -skip qtwebview \
	    -skip qtwinextras \
	    -skip qtx11extras \
	    -skip qtxmlpatterns
make all install
