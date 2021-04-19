#!/bin/bash
# make sure the script fails if there is an error
set -e

pushd ./ORB_SLAM2
  pushd Thirdparty/DBoW2
    echo "Cleaning ORB_SLAM2/Thirdparty/DBoW2 ..."
    rm -rf lib
    rm -rf build
  popd
  pushd Thirdparty/g2o
    echo "Cleaning ORB_SLAM2/Thirdparty/g2o ..."
    rm -rf lib
    rm -rf build
  popd
  echo "Cleaning ORB_SLAM2 ..."
  rm -rf lib
  rm -rf build
popd

pushd eigen
  echo "Cleaning eigen ..."
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
