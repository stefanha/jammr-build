#!/bin/bash
. functions

download "https://sourceforge.net/projects/portmedia/files/portmidi/217/portmidi-src-217.zip/download" "portmidi-src-217.zip" "f45bf4e247c0d7617deacd6a65d23d9fddae6117"

cd build
rm -rf portmidi
unzip ../download/portmidi-src-*.zip
cd portmidi
sed -e "s%@@MACOSX_DEPLOYMENT_TARGET@@%$MACOSX_DEPLOYMENT_TARGET%" \
    -e "s%@@PREFIX@@%$prefix%" \
    -e "s%@@SYSROOT@@%$(xcrun --show-sdk-path)%" \
    ../../portmidi.patch.in | patch -p1
make -f pm_mac/Makefile.osx
make -f pm_mac/Makefile.osx install
