#!/bin/bash
set -e
cd build
rm -rf portaudio
tar xf ../download/pa_stable_*.tgz
cd portaudio
./configure --prefix=/Users/test/jammr-build/root
make -j4
make install
