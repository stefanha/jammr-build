#!/bin/bash
set -e
cd build
rm -rf portaudio
tar xf ../download/pa_stable_*.tgz
cd portaudio
CFLAGS=-mmacosx-version-min=10.8 CXXFLAGS=-mmacosx-version-min=10.8 LDFLAGS=-mmacosx-version-min=10.8 ./configure --prefix=/Users/test/jammr-build/root
make -j4
make install
