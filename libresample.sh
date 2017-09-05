#!/bin/bash
set -e

. functions

download "http://http.debian.net/debian/pool/main/libr/libresample/libresample_0.1.3.orig.tar.gz" "85339a6114627e27010856f42a3948a545ca72de"

cd build
rm -rf libresample-*
tar xf ../download/libresample_*.tar.gz
cd libresample-*
CFLAGS=-mmacosx-version-min=10.8 CXXFLAGS=-mmacosx-version-min=10.8 LDFLAGS=-mmacosx-version-min=10.8 ./configure --prefix=/Users/test/jammr-build/root
make -j4
cp libresample.a ../../root/lib/
cp include/libresample.h ../../root/include/
