#!/bin/bash

mkdir -p build/
cd build
/Applications/CMake.app/Contents/bin/cmake -DCMAKE_CXX_COMPILER="c++" -DCMAKE_CXX_FLAGS="-std=c++11 -stdlib=libc++" -DCMAKE_OSX_ARCHITECTURES="x86_64" -DWITH_PNG=OFF -DWITH_BZip2=OFF ../
make
cd ..

mkdir -p ../infistd/lib/osx/x86/bin
mkdir -p ../infistd/lib/osx/x86/debug
cp -v ./build/libfreetype.a ../infistd/lib/osx/x86/bin
cp -v ./build/libfreetype.a ../infistd/lib/osx/x86/debug