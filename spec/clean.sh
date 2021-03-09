#!/bin/bash
# make sure the script fails if there is an error
set -e

CMAKE_CLEAN='rm -rf CMakeCache.txt cmake_install.cmake CMakeFiles Makefile'

pushd ../ORB_SLAM2
  pushd Thirdparty/DBoW2
    echo "Cleaning Thirdparty/DBoW2 ..."
    rm -rf lib
    rm -rf build
  popd
  pushd Thirdparty/g2o
    echo "Cleaning Thirdparty/g2o ..."
    rm -rf lib
    rm -rf build
  popd
  echo "Cleaning ORB_SLAM2 ..."
  rm -rf lib
  rm -rf build
popd