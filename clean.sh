#!/bin/bash
# make sure the script fails if there is an error
set -e

CMAKE_CLEAN='rm -rf CMakeCache.txt cmake_install.cmake CMakeFiles Makefile'

pushd eigen
  echo "Cleaning eigen3 ..."
  if [ -d build ]; then
    pushd build
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
        rm -f lib/*.a
        ${CMAKE_CLEAN}
        pushd 3rdparty
          rm -f ippicv/ippicv_lnx/icv/lib/intel64/libippicv.a
          rm -f lib/*.a
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
          pushd intensity_transform
	    ${CMAKE_CLEAN}
          popd
          pushd phase_unwrapping
            ${CMAKE_CLEAN}
          popd
          pushd photo
            ${CMAKE_CLEAN}
          popd
          pushd plot
            ${CMAKE_CLEAN}
          popd
          pushd quality
            ${CMAKE_CLEAN}
          popd
          pushd reg
            ${CMAKE_CLEAN}
          popd
          pushd surface_matching
            ${CMAKE_CLEAN}
          popd
          pushd xphoto
            ${CMAKE_CLEAN}
          popd
          pushd alphamat
            ${CMAKE_CLEAN}
          popd
          pushd dnn
            ${CMAKE_CLEAN}
          popd
          pushd dnn_superres
            ${CMAKE_CLEAN}
          popd
          pushd features2d
            ${CMAKE_CLEAN}
          popd
          pushd fuzzy
            ${CMAKE_CLEAN}
          popd
          pushd hfs
            ${CMAKE_CLEAN}
          popd
          pushd img_hash
            ${CMAKE_CLEAN}
          popd
          pushd imgcodecs
            ${CMAKE_CLEAN}
          popd
          pushd line_descriptor
            ${CMAKE_CLEAN}
          popd
          pushd saliency
            ${CMAKE_CLEAN}
          popd
          pushd text
            ${CMAKE_CLEAN}
          popd
          pushd videoio
            ${CMAKE_CLEAN}
          popd
          pushd wechat_qrcode
            ${CMAKE_CLEAN}
          popd
          pushd calib3d
            ${CMAKE_CLEAN}
          popd
          pushd datasets
            ${CMAKE_CLEAN}
          popd
          pushd highgui
            ${CMAKE_CLEAN}
          popd
          pushd mcc
            ${CMAKE_CLEAN}
          popd
          pushd objdetect
            ${CMAKE_CLEAN}
          popd
          pushd rapid
            ${CMAKE_CLEAN}
          popd
          pushd rgbd
            ${CMAKE_CLEAN}
          popd
          pushd shape
            ${CMAKE_CLEAN}
          popd
          pushd structured_light
            ${CMAKE_CLEAN}
          popd
          pushd ts
            ${CMAKE_CLEAN}
          popd
          pushd video
            ${CMAKE_CLEAN}
          popd
          pushd videostab
            ${CMAKE_CLEAN}
          popd
          pushd xfeatures2d
            ${CMAKE_CLEAN}
          popd
          pushd xobjdetect/tools/waldboost_detector
            ${CMAKE_CLEAN}
          popd
          pushd aruco
            ${CMAKE_CLEAN}
          popd
          pushd bgsegm
            ${CMAKE_CLEAN}
          popd
          pushd bioinspired
            ${CMAKE_CLEAN}
          popd
          pushd ccalib
            ${CMAKE_CLEAN}
          popd
          pushd dnn_objdetect
            ${CMAKE_CLEAN}
          popd
          pushd dpm
            ${CMAKE_CLEAN}
          popd
          pushd face
            ${CMAKE_CLEAN}
          popd
          pushd gapi
            ${CMAKE_CLEAN}
          popd
          pushd optflow
            ${CMAKE_CLEAN}
          popd
          pushd stitching
            ${CMAKE_CLEAN}
          popd
          pushd superres
            ${CMAKE_CLEAN}
          popd
          pushd tracking
            ${CMAKE_CLEAN}
          popd
          pushd stereo
            ${CMAKE_CLEAN}
          popd
          pushd ximgproc
            ${CMAKE_CLEAN}
          popd
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
        pushd apps
          pushd version
            ${CMAKE_CLEAN}
          popd
          pushd annotation
            ${CMAKE_CLEAN}
          popd
          pushd visualisation
            ${CMAKE_CLEAN}
          popd
          pushd interactive-calibration
            ${CMAKE_CLEAN}
          popd
        popd
      popd
    fi
  popd
popd
