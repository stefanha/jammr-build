#!/bin/bash
set -e
cd build
rm -rf libvorbis-*
tar xf ../download/libvorbis-*.tar.gz
cd libvorbis-*
CFLAGS=-mmacosx-version-min=10.8 CXXFLAGS=-mmacosx-version-min=10.8 LDFLAGS=-mmacosx-version-min=10.8 ./configure --prefix=/Users/test/jammr-build/root
make -j4
make install
