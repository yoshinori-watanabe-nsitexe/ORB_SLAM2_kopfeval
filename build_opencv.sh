#!/bin/bash
# make sure the script fails if there is an error
set -e

echo "Configuring and building OpenCV 2.4 ..."

pushd eigen
  pushd opencv
    mkdir -p build
    pushd build
      echo "Starting cmake for openCV 2.4 ..."
      cmake -DBUILD_SHARED_LIBS=OFF -DEIGEN_INCLUDE_PATH=../../../eigen3/include/eigen3 ../
      echo "Starting make for openCV 2.4 ..."
      make -j4
    popd
  popd
popd