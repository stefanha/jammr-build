#!/bin/bash
. functions

download "https://download.qt.io/official_releases/qt/5.14/5.14.2/single/qt-everywhere-src-5.14.2.tar.xz" "109dd41023c5df59b1aaf6d04211b473dea970ea"
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
	    -no-glib
patch -p1 <../../qt-chromium-find_sdk.patch
make all install
