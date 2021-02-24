#!/bin/bash

# make sure the script fails if there is an error
set -e

CMAKE_CLEAN='rm -rf CMakeCache.txt cmake_install.cmake CMakeFiles Makefile'

cd ../

#ORB_SLAM2
pushd ORB_SLAM2

echo "Cleaning Thirdparty/DBoW2 ..."

cd Thirdparty/DBoW2
rm -f lib/libDBoW2.so
rm -f lib/libDBoW2.a
cd build
${CMAKE_CLEAN}

cd ../../g2o

echo "Cleaning Thirdparty/g2o ..."
rm -f lib/libg2o.so
rm -f lib/libg2o.a
cd build
${CMAKE_CLEAN}

cd ../../../

echo "Cleaning ORB_SLAM2 ..."
rm -f lib/libORB_SLAM2.so
rm -f lib/libORB_SLAM2.a
cd build
${CMAKE_CLEAN}

cd ../

popd