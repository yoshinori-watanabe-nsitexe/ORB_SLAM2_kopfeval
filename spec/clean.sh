#!/bin/bash
# make sure the script fails if there is an error
set -e

CMAKE_CLEAN='rm -rf CMakeCache.txt cmake_install.cmake CMakeFiles Makefile'

pushd ../ORB_SLAM2
  pushd Thirdparty/DBoW2
    echo "Cleaning Thirdparty/DBoW2 ..."
    rm -f lib/libDBoW2.so
    rm -f lib/libDBoW2.a
    if [ -d build ]; then
      pushd build
        ${CMAKE_CLEAN}
      popd
    fi
  popd
  pushd Thirdparty/g2o
    echo "Cleaning Thirdparty/g2o ..."
    rm -f lib/libg2o.so
    rm -f lib/libg2o.a
    if [ -d build ]; then
      pushd build
        ${CMAKE_CLEAN}
      popd
    fi
  popd
  echo "Cleaning ORB_SLAM2 ..."
  rm -f lib/libORB_SLAM2.so
  rm -f lib/libORB_SLAM2.a
  if [ -d build ]; then
    pushd build
      ${CMAKE_CLEAN}
    popd
  fi
popd