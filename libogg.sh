#!/bin/bash
set -e
cd build
rm -rf libogg-*
tar xf ../download/libogg-*.tar.gz
cd libogg-*
./configure --prefix=/Users/test/jammr-build/root
make -j4
make install
