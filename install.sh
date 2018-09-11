
result = conda create -n colombina
conda activate colombina
conda install pytorch=0.4.1 torchvision -c pytorch
conda install numpy=1.15.1
conda install -c conda-forge opencv=3.4.1

 cd ~ && wget -qO- https://github.com/opencv/opencv/archive/3.4.1.tar.gz | tar xvz
cd opencv-3.4.1
mkdir release
cd release
cmake -DBUILD_TIFF=ON \
		-DBUILD_opencv_java=OFF \
		-DWITH_CUDA=OFF \
		-DBUILD_PROTOBUF=OFF \
		-DPROTOBUF_UPDATE_FILES=ON \
		-DWITH_OPENGL=ON \
		-DWITH_OPENCL=ON \
		-DWITH_IPP=ON \
		-DWITH_TBB=ON \
		-DWITH_EIGEN=ON \
		-DBUILD_PROTOBUF=OFF \
		-DWITH_V4L=ON \
		-DWITH_VTK=OFF \
		-DBUILD_TESTS=OFF \
		-DBUILD_PERF_TESTS=OFF \
		-DCMAKE_BUILD_TYPE=RELEASE  \
		-DPYTHON3_PACKAGES_PATH=$CONDA_PREFIX/lib/python3.6/site-packages \
		-DPYTHON3_INCLUDE_DIR=$CONDA_PREFIX/include/python3.6m \
		-DPYTHON3_EXECUTABLE=$CONDA_PREFIX/bin/python \
		-DBUILD_opencv_python2=OFF \
		-DBUILD_opencv_python3=ON \
		-DINSTALL_PYTHON_EXAMPLES=ON \
		-DINSTALL_C_EXAMPLES=OFF ..
make -j4
make install
#
