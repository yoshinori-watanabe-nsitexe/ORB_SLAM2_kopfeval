TARGET:=ORB_SLAM

USER_INIT:=pushd ../; ./build_eigen.sh; ./build_opencv.sh; popd; pushd ../ORB_SLAM2/; ./build_DBoW2.sh; ./build_g2o.sh; popd
USER_BUILD:=pushd ../ORB_SLAM2/; ./build_ORB_SLAM.sh; popd
USER_RUN:=cd  ../ORB_SLAM2 ; Examples/Monocular/mono_tum Vocabulary/ORBvoc.txt Examples/Monocular/TUM1.yaml ../dataset/rgbd_dataset_freiburg1_rpy
USER_SLX_MODE_SWITCH:=rm -rf ../ORB_SLAM2/Examples/Monocular/mono_tum
OPTIMISTIC_ANALYSIS:=0
CANDIDATE_THRESHOLD:=50
FILTER_RATIO:=0.01
FIND_DLP:=1
FIND_PLP:=0
FIND_TLP:=0
FIND_OFL:=0
TRACE_REMOTELY:=0
VECTOR_CONTENTION:=0
BASEPATH:=../ORB_SLAM2
PTHREADS_PROGRAM:=1
SCALAR_CONTENTION:=0
ENABLE_AUTO_VECTORIZATION:=0
USER_CLEAN:=pushd ../; ./clean.sh; popd; ./clean.sh
FUNCTION_EXCLUDES:=
PLATFORM:=nsitexe_dr1000c
