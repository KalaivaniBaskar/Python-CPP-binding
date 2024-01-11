cmake_minimum_required(VERSION 3.2)
project(pybind)
add_subdirectory(pybind11) 
# Set the path to your OpenCL headers
set(OPENCL_INCLUDE_DIR "./Cpp_common")

# Set the path to your OpenCL libraries
# on terminal use command: find /usr/lib -name libOpenCL.so
set(OPENCL_LIB_DIR "/usr/lib/x86_64-linux-gnu")

# Include OpenCL headers
include_directories(${OPENCL_INCLUDE_DIR})

# Add the Pybind11 module for mmul_mod target
pybind11_add_module(mmul_mod mmul.cpp)

# Link against OpenCL for mmul_mod target
target_link_libraries(mmul_mod PRIVATE ${OPENCL_LIB_DIR}/libOpenCL.so)

# Add the Pybind11 module 
#pybind11_add_module(mod_name main.cpp)
#pybind11_add_module(mod_name main.cpp)
