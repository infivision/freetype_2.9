#!/bin/bash

mkdir -p build/
cd build/
cmake ..
make
cd ..

cp -v ./build/libfreetype.a ../infistd/lib/linux/x86/bin
cp -v ./build/libfreetype.a ../infistd/lib/linux/x86/debug