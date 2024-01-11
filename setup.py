from setuptools import setup
from pybind11.setup_helpers import Pybind11Extension

ext_modules = [
    Pybind11Extension(
        "mmul_mod",  # Replace with the desired module name
        ["mmul.cpp"],  # Add all your C++ source files here
        include_dirs=["./OpenCL-CLHPP/include"],  # Path to the pybind11 headers
        libraries=["OpenCL"],  # Add other libraries if needed
    ),
    Pybind11Extension(
        "my_mod",
        ["main.cpp"],
        include_dirs=["/path/to/pybind11/include"],
        # No need to include OpenCL libraries here
    ),
]

setup(
    name='mmul_mod',
    ext_modules=ext_modules,
    install_requires=["pybind11"],  # Install pybind11 automatically
    zip_safe=False,
)

# after setup file, pip install .
# ------------------------------------------------------------------------
# from setuptools import setup
# from torch.utils import cpp_extension

# setup(
#     name='pypooling',
#     ext_modules=[cpp_extension.CppExtension('pypooling', ['pypooling.cpp'],include_dirs=['/home/aswin/opencl/OpenCL-CLHPP/include'],
#         libraries=['OpenCL'])],
#     cmdclass={'build_ext': cpp_extension.BuildExtension}
# )
# python setup.py install will install this package