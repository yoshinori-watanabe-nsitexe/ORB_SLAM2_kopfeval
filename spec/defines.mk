TARGET:=ORB_SLAM

USER_INIT:=
USER_BUILD:=pushd  ../ ; ./build.sh ;popd; pushd ../ORB_SLAM2/; ./build.sh; popd
USER_RUN:=cd  ../ORB_SLAM2 ; ./Examples/Monocular/mono_tum Vocabulary/ORBvoc.txt Examples/Monocular/TUM1.yaml ../dataset/rgbd_dataset_freiburg1_rpy
USER_SLX_MODE_SWITCH:=../clean.sh
OPTIMISTIC_ANALYSIS:=0
CANDIDATE_THRESHOLD:=50
FILTER_RATIO:=0.01
FIND_DLP:=1
FIND_PLP:=0
FIND_TLP:=0
FIND_OFL:=1
TRACE_REMOTELY:=0
VECTOR_CONTENTION:=0
BASEPATH:=../ORB_SLAM2
PTHREADS_PROGRAM:=0
SCALAR_CONTENTION:=0
ENABLE_AUTO_VECTORIZATION:=0
USER_CLEAN:=../clean.sh
FUNCTION_EXCLUDES:=
PLATFORM:=nsitexe_dr1000c
