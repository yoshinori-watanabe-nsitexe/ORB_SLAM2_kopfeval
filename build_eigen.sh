#!/bin/bash
# make sure the script fails if there is an error
set -e

export PATH=/usr/local/bin:${PATH}
export LD_LIBRARY_PATH=/opt/gcc/6.2.0/linux/gcc-6.2.0_64/lib64:${LD_LIBRARY_PATH}

echo "Configuring and building eigen3 ..."

pushd eigen
  mkdir -p build
  pushd build
    cmake -DBUILD_SHARD_LIBS=OFF ../ -DCMAKE_INSTALL_PREFIX=../../eigen3
    make install
  popd
popd