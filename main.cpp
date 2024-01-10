#include <pybind11/pybind11.h>
#include <pybind11/stl.h>
#include <vector>
// make sure to clone the pybind11 repo grom git in the project folder to get the header files

namespace py = pybind11;

float some_fn(float arg1, float arg2){
    return arg1 + arg2;
}

class SomeClass {
    float multiplier; 
public: 
    SomeClass(float multiplier_) : multiplier(multiplier_){};

    float multiply(float input){
        return multiplier * input;
    }

    // pybind automatically does list to vector conversion vice versa
    std::vector<float> multiply_list(std::vector<float> items){
        for(auto i = 0; i < items.size(); i++){
            items[i] = multiply(items.at(i));
        }
        return items;
    } 

    // alternately we can also use python datastruct in c++ 
    // returns a tuple
    py::tuple multiply_two(float one, float two){
        return py::make_tuple(multiply(one), multiply(two));
    }
};
// module(name, variablle) - match the module's name given in CMakelists matched the PYBIND11_MODULE macro
PYBIND11_MODULE(mod_name, handle){
    handle.doc() = "This is setting docstring for module.";
    handle.def("some_fn_in_python", &some_fn); 

    py::class_<SomeClass>(handle, "PySomeClass")
        .def(py::init<float>())
        .def("multiply", &SomeClass::multiply)
        .def("multiply_list", &SomeClass::multiply_list)
        .def("multiply_two", &SomeClass::multiply_two);
        // whatever methods & fields are exposed here in this macro are only accessible in our python code 
        // so make sure to expose the constructor of the class and other methods we need
};

// after cmake build and  make list the folder 
/*
kalaivani@kalaivani-ThinkPad-L14-Gen-3:~/Documents/PyBinding/build$ ls -lha
total 324K
drwxrwxr-x 4 kalaivani kalaivani 4.0K Jan  4 17:45 .
drwxrwxr-x 4 kalaivani kalaivani 4.0K Jan  4 17:42 ..
-rw-rw-r-- 1 kalaivani kalaivani  20K Jan  4 17:43 CMakeCache.txt
drwxrwxr-x 5 kalaivani kalaivani 4.0K Jan  4 17:45 CMakeFiles
-rw-rw-r-- 1 kalaivani kalaivani 1.8K Jan  4 17:43 cmake_install.cmake
-rw-rw-r-- 1 kalaivani kalaivani 5.1K Jan  4 17:43 Makefile
-rwxrwxr-x 1 kalaivani kalaivani 276K Jan  4 17:45 mod_name.cpython-310-x86_64-linux-gnu.so
drwxrwxr-x 3 kalaivani kalaivani 4.0K Jan  4 17:43 pybind11
this file : mod_name.cpython-310-x86_64-linux-gnu.so is our module and it behave like a .py file
in ipython3, try import mod_name (mod_name is the name we gave for our module in Cmakelists and the in main.cpp)

*/