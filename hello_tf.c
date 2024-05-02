#include <stdio.h>
#include <stdlib.h>
#include <tensorflow/c/c_api.h>

int main() {

    //const char *tf_version = TF_Version();

    printf("Hello from TensorFlow C library version %s\n", TF_Version());
    //printf("Hello from TensorFlow C library version %s\n", tf_version);
    //printf("Hello from TensorFlow C library version\n");
    
    //free((void *)tf_version);
    
    return 0;
}
