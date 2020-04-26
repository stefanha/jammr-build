#!/bin/bash
. functions

download "https://sourceforge.net/projects/portmedia/files/portmidi/217/portmidi-src-217.zip/download" "portmidi-src-217.zip" "f45bf4e247c0d7617deacd6a65d23d9fddae6117"

cd build
rm -rf portmidi
unzip ../download/portmidi-src-*.zip
cd portmidi
patch -p1 <../../portmidi.patch
make -f pm_mac/Makefile.osx
make -f pm_mac/Makefile.osx install
