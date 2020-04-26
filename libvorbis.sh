#!/bin/bash
. functions

download "http://downloads.xiph.org/releases/vorbis/libvorbis-1.3.6.tar.gz" "91f140c220d1fe3376d637dc5f3d046263784b1f"

cd build
rm -rf libvorbis-*
tar xf ../download/libvorbis-*.tar.gz
cd libvorbis-*
./configure --prefix="$prefix"
make -j4
make install
