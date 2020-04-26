#!/bin/bash
set -e
cd build
rm -rf libvorbis-*
tar xf ../download/libvorbis-*.tar.gz
cd libvorbis-*
./configure --prefix=/Users/test/jammr-build/root
make -j4
make install
