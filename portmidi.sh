#!/bin/bash
. functions

cd build
rm -rf portmidi
unzip ../download/portmidi-src-*.zip
cd portmidi
patch -p1 <../../portmidi.patch
make -f pm_mac/Makefile.osx
make -f pm_mac/Makefile.osx install
