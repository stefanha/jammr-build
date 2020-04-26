#!/bin/bash
. functions

download "https://github.com/frankosterfeld/qtkeychain/archive/v0.10.0.tar.gz" "qtkeychain-v0.10.0.tar.gz" "e17707d3347e65f9df52a5b59478f482d964fa23"
cd build
rm -rf qtkeychain-*
tar xf ../download/qtkeychain-*.tar.gz
cd qtkeychain-*
cmake -DCMAKE_INSTALL_PREFIX:PATH="$prefix" . && make all install
