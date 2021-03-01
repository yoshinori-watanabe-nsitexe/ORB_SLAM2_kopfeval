#!/bin/bash
# make sure the script fails if there is an error
set -e

export PATH=/usr/local/bin:${PATH}
export LD_LIBRARY_PATH=/opt/gcc/6.2.0/linux/gcc-6.2.0_64/lib64:${LD_LIBRARY_PATH}

echo "Configuring and building OpenCV ..."

pushd eigen
  pushd opencv
    mkdir -p build
    pushd build
      cmake -DBUILD_SHARED_LIBS=OFF -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules -D EIGEN_INCLUDE_PATH=../../eigen3/include/eigen3 ../
      make -j4
    popd
  popd
popd
