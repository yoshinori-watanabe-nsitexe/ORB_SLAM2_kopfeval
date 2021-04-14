#!/bin/bash
# make sure the script fails if there is an error
set -e

CMAKE_CLEAN='rm -rf CMakeCache.txt cmake_install.cmake CMakeFiles Makefile'

pushd eigen
  echo "Cleaning eigen 3.1 ..."
  rm -rf build
popd
rm -rf eigen3

pushd eigen
  pushd opencv
    echo "Cleaning OpenCV 3.4 ..."
    rm -rf lib
    rm -rf build
  popd
popd
