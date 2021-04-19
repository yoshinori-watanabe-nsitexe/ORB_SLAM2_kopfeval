#!/bin/bash
# make sure the script fails if there is an error
set -e
#Delete ORB_SLAM2
echo "Removing ORB_SLAM2 ..."
rm -rf ORB_SLAM2
#Delete EIGEN & opencv
echo "Removing EIGEN 3.1 & OpenCV 2.4 ..."
rm -rf eigen
rm -rf eigen3
#Delete dataset
echo "Removing dataset ..."
rm -rf dataset

