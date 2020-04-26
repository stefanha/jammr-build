#!/bin/bash
. functions

download "http://http.debian.net/debian/pool/main/libr/libresample/libresample_0.1.3.orig.tar.gz" "85339a6114627e27010856f42a3948a545ca72de"

cd build
rm -rf libresample-*
tar xf ../download/libresample_*.tar.gz
cd libresample-*
./configure --prefix="$prefix"
make -j4
cp libresample.a ../../root/lib/
cp include/libresample.h ../../root/include/
