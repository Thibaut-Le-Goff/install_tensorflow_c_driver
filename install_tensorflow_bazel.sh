#!/bin/bash


# source:
# https://github.com/tensorflow/tensorflow/tree/master/tensorflow/tools/lib_package
# https://stackoverflow.com/questions/75151325/bazel-running-out-of-memory-and-crashing-when-running-coverage

tensorflow_package="tensorflow/bazel-bin/tensorflow/tools/lib_package/libtensorflow.tar.gz"

if [ -e "$tensorflow_package" ]; then
    tar -C /usr/local -xzf "$tensorflow_package"
    cp -r /usr/local/include/xla/tsl /usr/local/include/tsl
    #ldconfig
    ldconfig /usr/local/lib

    # test
    gcc hello_tf.c -ltensorflow -o hello_tf

    ./hello_tf
else
    # must be run in the tensorflow dir
    echo "Cant find $tensorflow_package.\n"
    echo "Please, run 'git clone https://github.com/tensorflow/tensorflow' and 'bazel build --jobs=2 //tensorflow/tools/lib_package:libtensorflow' in the tensorflow dir and rerun the script."
fi


