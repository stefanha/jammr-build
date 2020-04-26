#!/bin/bash
. functions

download "https://github.com/ninja-build/ninja/archive/v1.10.0.tar.gz" "ninja-v1.10.0.tar.gz" "7134bca607e17238d272e281ce1cae05d04be970"
cd build
rm -rf ninja-*
tar xf ../download/ninja-*.tar.gz
cd ninja-*
./configure.py --bootstrap
cp ninja "$prefix/bin/"
