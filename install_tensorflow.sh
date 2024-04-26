#!/bin/bash

# source :
# https://www.tensorflow.org/install/lang_c?hl=fr
# usefull link :
# https://developer.nvidia.com/cuda-12-4-0-download-archive

package="libtensorflow-gpu-linux-x86_64-2.6.0.tar.gz"

# wget https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-gpu-linux-x86_64-2.6.0.tar.gz

wget "https://storage.googleapis.com/tensorflow/libtensorflow/$package"

# sudo tar -C /usr/local -xzf https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-gpu-linux-x86_64-2.6.0.tar.gz

tar -C /usr/local -xzf "$package"
ldconfig

# test
gcc hello_tf.c -ltensorflow -o hello_tf

./hello_tf

rm "$package"
