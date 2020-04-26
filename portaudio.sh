#!/bin/bash
. functions

download "http://www.portaudio.com/archives/pa_stable_v190600_20161030.tgz" "56c596bba820d90df7d057d8f6a0ec6bf9ab82e8"

cd build
rm -rf portaudio
tar xf ../download/pa_stable_*.tgz
cd portaudio
./configure --prefix="$prefix"
make -j4
make install
