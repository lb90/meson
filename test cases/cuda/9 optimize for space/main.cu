#include <cuda_runtime.h>
#include <iostream>

int cuda_devices() {
    int result = 0;
    cudaGetDeviceCount(&result);
    return result;
}


int main() {
    int n = cuda_devices();
    if (n == 0) {
        std::cout << "No Cuda hardware found. Exiting.\n";
        return 0;
    }

    std::cout << "Found " << n << "Cuda devices.\n";
    return 0;
}
