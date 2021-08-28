#!/bin/bash
mkdir build
cd build

cmake ${CMAKE_ARGS} -DBACKWARD_TESTS=True -DCMAKE_PREFIX_PATH=$PREFIX -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX ..
make -j${CPU_COUNT}
if [[ "${CONDA_BUILD_CROSS_COMPILATION:-}" != "1" ]]; then
ctest -V
fi
make install
