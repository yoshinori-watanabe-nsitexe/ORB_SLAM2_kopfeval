#!/bin/bash
# make sure the script fails if there is an error
set -e
#Clone ORB_SLAM2
echo "Cloning ORB_SLAM2 ..."
git clone -b for_SLX https://github.com/ryuei-washida-nsitexe/ORB_SLAM2.git
#Clone EIGEN
echo "Cloning EIGEN ..."
git clone -b for_SLX https://gitlab.com/ryuei-washida-nsitexe/eigen.git
#Clone OPENCV
pushd eigen
  echo "Cloning opencv 3.4 ..."
  git clone -b 3.4 https://github.com/opencv/opencv.git
  echo "Cloning opencv_contrib ..."
  git clone -b 3.4 https://github.com/opencv/opencv_contrib.git
popd
#Download dataset
mkdir -p dataset
pushd dataset
  echo "Downloading dataset ..."
  wget https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_rpy.tgz
  echo "Expanding dataset ..."
  tar zxvf rgbd_dataset_freiburg1_rpy.tgz
popd
#Expand ORB Vocabulary
echo "Expanding ORB vocabulary ..."
pushd ORB_SLAM2/Vocabulary
  tar -zxvf ORBvoc.txt.tar.gz
popd
