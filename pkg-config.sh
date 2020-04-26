#!/bin/bash
. functions

download "https://pkg-config.freedesktop.org/releases/pkg-config-0.29.2.tar.gz" "76e501663b29cb7580245720edfb6106164fad2b"
cd build
rm -rf pkg-config-*
tar xf ../download/pkg-config-*.tar.gz
cd pkg-config-*
./configure --prefix="$prefix" --with-internal-glib
make -j4
make -j4 install
