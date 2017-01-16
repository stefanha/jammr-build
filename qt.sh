#!/bin/bash
. functions

download "http://download.qt.io/official_releases/qt/5.7/5.7.1/single/qt-everywhere-opensource-src-5.7.1.tar.gz" "6cee9860f32e346ad355f1bb3436207dca8d4369"
cd build
rm -rf qt-everywhere-*
tar xf ../download/qt-everywhere-*.tar.gz
cd qt-everywhere-*
./configure -verbose \
	    -prefix /Users/test/jammr-build/root \
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
	    -no-glib
make -j4
