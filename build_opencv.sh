#!/bin/bash
# make sure the script fails if there is an error
set -e

echo "Configuring and building OpenCV 3.4 ..."

pushd eigen
  pushd opencv
    mkdir -p build
    pushd build
      echo "Starting cmake for openCV 3.4 ..."
      cmake -DBUILD_SHARED_LIBS=OFF -DWITH_IPP=OFF -DENABLE_PROFILING=ON -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules -DEIGEN_INCLUDE_PATH=../../../eigen3/include/eigen3 ../
      echo "Starting make for openCV 3.4 ..."
      make -j4
    popd
  popd
popd
