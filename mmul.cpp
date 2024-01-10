#include <pybind11/pybind11.h>
#include <pybind11/stl.h>
#include <pybind11/numpy.h>
#include <vector>
#define __CL_ENABLE_EXCEPTIONS
#include "CL/opencl.hpp"
// clone repo for OpenCL header git clone --recursive https://github.com/KhronosGroup/OpenCL-CLHPP
#include <iostream>
// pick up device type from compiler command line or from the default type
#ifndef DEVICE
#define DEVICE CL_DEVICE_TYPE_GPU
#endif
// make sure to clone the pybind11 repo grom git in the project folder to get the header files
namespace py = pybind11;

py::array_t<float> mat_mul(py::array_t<float> input_array1, py::array_t<float> input_array2) {
       // Accessing the buffer information
    py::buffer_info buf_info1 = input_array1.request();
    py::buffer_info buf_info2 = input_array2.request();

    // Pointer to the data
    float *ptr1 = static_cast<float *>(buf_info1.ptr);
    float *ptr2 = static_cast<float *>(buf_info2.ptr);

    // Dimensions of the N*N matrix assuming A and B are of the same order
    size_t rows = buf_info1.shape[0];
    size_t cols = buf_info1.shape[1];

    // If you need to convert it to std::vector<float>
    std::vector<float> h_A(ptr1, ptr1 + rows * cols);
    std::vector<float> h_B(ptr2, ptr2 + rows * cols);
    std::vector<float> h_C(rows * cols); // Host memory for Matrix C

//--------------------------------------------------------------------------------
// Create a context and queue
//--------------------------------------------------------------------------------

// Create a context
        cl::Context context(DEVICE);
        std::cout<< "Context for Device : " << DEVICE << std::endl;
                // Get the command queue
        cl::CommandQueue queue(context);


        cl::Buffer d_a, d_b, d_c;   // Matrices in device memory       

        d_a = cl::Buffer(context, h_A.begin(), h_A.end(), true);

        d_b = cl::Buffer(context, h_B.begin(), h_B.end(), true);

        d_c = cl::Buffer(context, CL_MEM_WRITE_ONLY, sizeof(float) * (rows*cols));
    
    std::string kernelsource = "__kernel void mmul(                             \n" \
        "   const int N,                                                        \n" \
        "   __global float* A,                                                  \n" \
        "   __global float* B,                                                  \n" \
        "   __global float* C)                                                  \n" \
        "{                                                                      \n" \
        "   int k;                                                              \n" \
        "   int i = get_global_id(0);                                           \n" \
        "   int j = get_global_id(1);                                           \n" \
        "   float tmp;                                                          \n" \
        "   if ( (i < N) && (j <N))                                             \n" \
        "   {                                                                   \n" \
        "       tmp = 0.0;                                                      \n" \
        "       for(k=0;k<N;k++)                                                \n" \
        "           tmp += A[i*N+k] * B[k*N+j];                                 \n" \
        "       C[i*N+j] = tmp;                                                 \n" \
        "   }                                                                   \n" \
        "}                                                                      \n" \
        "\n";

//---------------------------------------------------------------------
// OpenCL matrix multiplication ... Naive

        // Create the compute program from the source buffer
        cl::Program program(context, kernelsource, true);

        // Create the compute kernel from the program
        cl::compatibility::make_kernel<int, cl::Buffer, cl::Buffer, cl::Buffer> naive_mmul(program, "mmul");

        cl::NDRange global(rows, cols);
            naive_mmul(cl::EnqueueArgs(queue, global),
                    rows, d_a, d_b, d_c);

            queue.finish();


            cl::copy(queue, d_c, h_C.begin(), h_C.end());

    // Create a NumPy array from the C++ vector
    py::array_t<float> result({rows, cols}, h_C.data());

    // Return the NumPy array
    return result;
}


// module(name, variablle) - match the module's name given in CMakelists matched the PYBIND11_MODULE macro
PYBIND11_MODULE(mmul_mod, m){
    m.doc() = "Matrix Multiplication using OpenCL.";
    m.def("mat_mul_py", &mat_mul); 

        // whatever methods & fields are exposed here in this macro are only accessible in our python code 
        // so make sure to expose the constructor of the class and other methods we need
};
