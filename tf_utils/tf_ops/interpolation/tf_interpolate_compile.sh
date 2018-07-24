#/bin/bash
PYTHON=python3
CUDA_PATH=/usr/local/cuda
TF_LIB=$($PYTHON -c 'import tensorflow as tf; print(tf.sysconfig.get_lib())')
TF_PATH=$($PYTHON -c 'import tensorflow as tf; print(tf.sysconfig.get_include())')

g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I $TF_PATH -I $CUDA_PATH/include -I $TF_PATH/external/nsync/public -lcudart -L $CUDA_PATH/lib64/ -L $TF_LIB -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0
