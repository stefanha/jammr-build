#!/bin/bash
. functions

cd build
rm -rf portaudio
tar xf ../download/pa_stable_*.tgz
cd portaudio
./configure --prefix="$prefix"
make -j4
make install
