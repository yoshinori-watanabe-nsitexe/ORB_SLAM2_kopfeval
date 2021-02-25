export PATH=/usr/local/bin:${PATH}
export LD_LIBRARY_PATH=/opt/gcc/6.2.0/linux/gcc-6.2.0_64/lib64:${LD_LIBRARY_PATH}

#git submodule update --init
if [ ! -d ORB_SLAM2 ]; then
    git clone -b for_eval_kopfi https://github.com/yoshinori-watanabe-nsitexe/ORB_SLAM2
fi
#EIGEN
if [ ! -d eigen ]; then
    git clone -b for_eval_kopfi https://gitlab.com/ryuei-washida-nsitexe/eigen.git
    pushd eigen
        mkdir -p build
        pushd build
            cmake -DBUILD_SHARD_LIBS=OFF ../ -DCMAKE_INSTALL_PREFIX=../../eigen3
            make install
        popd
    popd
fi

#OPENCV
pushd eigen
if [ ! -d opencv ]; then
    git clone -b for_eval_kopfi https://github.com/ryuei-washida-nsitexe/opencv.git
    if [ ! -d opencv_contrib ]; then
        git clone -b for_eval_kopfi https://github.com/ryuei-washida-nsitexe/opencv_contrib.git
        pushd opencv
            mkdir -p build
            pushd build
                cmake -DBUILD_SHARED_LIBS=OFF -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules -D EIGEN_INCLUDE_PATH=../../eigen3/include/eigen3 ../
                make -j4
            popd
        popd
    fi
fi
popd

#ORB_SLAM2
#pushd ORB_SLAM2
#    chmod +x build.sh
#    ./build.sh
#popd

#dataset
if [ ! -d dataset ]; then
    mkdir dataset
    pushd dataset
        wget https://vision.in.tum.de/rgbd/dataset/freiburg1/rgbd_dataset_freiburg1_rpy.tgz
        tar xvf rgbd_dataset_freiburg1_rpy.tgz
    popd
fi
