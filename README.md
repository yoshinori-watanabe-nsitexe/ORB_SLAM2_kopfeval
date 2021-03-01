# ORB_SLAM2_kopfeval

This is ORB_SLAM2 without GUI & Pangolin for Silexica SLX C/C++ Analysis.

## How to use

After cloning this repository, execute "clone.sh" for cloning related repositories and download dataset.
If you would like to reclone the related repositories, before re-execute "clone.sh", execute "remove.sh" to remove directories.

Then, start Silexica SLX and import the Project by specifying the cloned directory.
After importing with copy, the directory can be removed.

### Notes

Following environment variables in the "build_eigen.sh" & "build_opencv.sh" should adjust to an using environment.

export PATH=/usr/local/bin:${PATH} 
export LD_LIBRARY_PATH=/opt/gcc/6.2.0/linux/gcc-6.2.0_64/lib64:${LD_LIBRARY_PATH}
