#!/bin/bash

# Check files
test -f ${PREFIX}/include/backward.hpp
test -f ${PREFIX}/lib/backward/BackwardConfig.cmake

# Test example build
mkdir build
cd build
cmake $RECIPE_DIR -DCMAKE_BUILD_TYPE=Debug
make
./main || true
