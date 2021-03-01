#!/bin/bash
# make sure the script fails if there is an error
set -e

CMAKE_CLEAN='rm -rf CMakeCache.txt cmake_install.cmake CMakeFiles Makefile'

pushd eigen
  echo "Cleaning eigen3 ..."
  if [ -d build ]; then
    pushd build
      pushd 3rdparty
        pushd libjpeg-turbo
          ${CMAKE_CLEAN}
        popd
        pushd libtiff
          ${CMAKE_CLEAN}
        popd
        pushd libwebp
          ${CMAKE_CLEAN}
        popd
        pushd openjpeg/openjp2
          ${CMAKE_CLEAN}
        popd
        pushd libpng
          ${CMAKE_CLEAN}
        popd
        pushd openexr
          ${CMAKE_CLEAN}
        popd
        pushd ippiw
          ${CMAKE_CLEAN}
        popd
        pushd protobuf
          ${CMAKE_CLEAN}
        popd
        pushd quirc
          ${CMAKE_CLEAN}
        popd
        pushd ittnotify
          ${CMAKE_CLEAN}
        popd
      popd
      pushd modules
        ${CMAKE_CLEAN}
        pushd core
          ${CMAKE_CLEAN}
        popd
        pushd flann
          ${CMAKE_CLEAN}
        popd
        pushd imgproc
          ${CMAKE_CLEAN}
        popd
        pushd ml
          ${CMAKE_CLEAN}
        popd
      popd
      pushd apps/version
        ${CMAKE_CLEAN}
      popd
  fi
popd

pushd eigen
  pushd opencv
    echo "Cleaning OpenCV ..."
    rm -f lib/*.a
    if [ -d build ]; then
      pushd build
        ${CMAKE_CLEAN}
        rm -f lib/*.a
        pushd 3rdparty
          rm -f lib/*.a
          rm -f 
        popd
      popd
    fi
  popd
popd