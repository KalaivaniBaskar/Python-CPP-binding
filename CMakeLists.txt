cmake_minimum_required(VERSION 3.2)
project(pybind)
add_subdirectory(pybind11)
pybind11_add_module(mod_name main.cpp)