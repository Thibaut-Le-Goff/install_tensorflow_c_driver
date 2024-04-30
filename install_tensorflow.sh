#!/bin/bash

# source :
# https://www.tensorflow.org/install/lang_c?hl=fr
# https://github.com/tensorflow/tensorflow/tree/master/tensorflow/c
# usefull link :
# https://developer.nvidia.com/cuda-12-4-0-download-archive
#https://developer.download.nvidia.com/compute/cuda/opensource/


package="libtensorflow-gpu-linux-x86_64.tar.gz"


wget "https://storage.googleapis.com/tensorflow-nightly/github/tensorflow/lib_package/$package"


tar -C /usr/local -xzf "$package"
ldconfig

# test
gcc hello_tf.c -ltensorflow -o hello_tf

./hello_tf

rm "$package"
