#!/bin/bash
. functions

cd build
rm -rf libogg-*
tar xf ../download/libogg-*.tar.gz
cd libogg-*
./configure --prefix="$prefix"
make -j4
make install
