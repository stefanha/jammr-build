#!/bin/bash
. functions

download "http://downloads.xiph.org/releases/ogg/libogg-1.3.4.tar.gz" "851cef020b346d44893e5d1c3dab83c675d479d9"

cd build
rm -rf libogg-*
tar xf ../download/libogg-*.tar.gz
cd libogg-*
./configure --prefix="$prefix"
make -j4
make install
