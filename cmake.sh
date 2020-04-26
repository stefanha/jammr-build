#!/bin/bash
. functions

download "https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1.tar.gz" "c5f11d66a9c37011264400b4e36e6dd0b4ae9160"
cd build
rm -rf cmake-*
tar xf ../download/cmake-*.tar.gz
cd cmake-*
./bootstrap --prefix="$prefix"
make -j4
make -j4 install
