#!/bin/bash
# make sure the script fails if there is an error
set -e

CMAKE_CLEAN='rm -rf CMakeCache.txt cmake_install.cmake CMakeFiles Makefile'

pushd ./eigen
  echo "Cleaning eigen3 ..."
  rm -f lib/*.so
  rm -f lib/*.a
  if [ -d build ]; then
    pushd build
      ${CMAKE_CLEAN}
    popd
  fi
popd

pushd ./eigen
  pushd ./opencv
    echo "Cleaning OpenCV ..."
    rm -f lib/*.so
    rm -f lib/*.a
    if [ -d build ]; then
      pushd build
        ${CMAKE_CLEAN}
      popd
    fi
  popd
popd