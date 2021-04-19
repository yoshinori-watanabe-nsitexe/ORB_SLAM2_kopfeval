#!/bin/bash
# make sure the script fails if there is an error
set -e

echo "Configuring and building eigen 3.1 ..."

pushd eigen
  mkdir -p build
  pushd build
    cmake ../ -DCMAKE_INSTALL_PREFIX=../../eigen3
    make install
  popd
popd
