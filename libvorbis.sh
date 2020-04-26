#!/bin/bash
. functions

cd build
rm -rf libvorbis-*
tar xf ../download/libvorbis-*.tar.gz
cd libvorbis-*
./configure --prefix="$prefix"
make -j4
make install
