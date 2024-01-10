import build.mod_name 
from build.mod_name import * 
from build.mmul_mod import *
import numpy as np

# Creating a NumPy array (matrix)
A = np.array([
    [3,3,3],
    [3,3,3],
    [3,3,3]
])
B = np.array([
    [3, 3, 3],
    [5,5,5],
    [5,5,5]
]) 
# B = np.array([
#     [1, 2, 3],
#     [4, 5, 6],
#     [7, 8, 9]
# ]) 

C = mat_mul_py(A,B)
# Convert the NumPy array to a Python list for display
print(C.tolist())
# [[30.0, 36.0, 42.0], [66.0, 81.0, 96.0], [102.0, 126.0, 150.0]] - 123*123 ip
# [[45.0, 45.0, 45.0], [45.0, 45.0, 45.0], [45.0, 45.0, 45.0]] - 333*555 ip

print(some_fn_in_python(4,9)) 
# 13.0 

# save code, then cmake .., then make , then run test.py in terminal 
# to save time we can combine all 3 commands as below and run in terminal
# cmake .. && make && python3 ../test.py

print(dir(build.mod_name))
# ['PySomeClass', '__doc__', '__file__', '__loader__', '__name__', '__package__', '__spec__', 'some_fn_in_python'] 

m = PySomeClass(5)
print(m)
# <build.mod_name.PySomeClass object at 0x7fc3a3804630>
# an obj of the class is created

print(m.multiply(9))
# 45.0

print(m.multiply_list([3,5,7,9]))
# [15.0, 25.0, 35.0, 45.0]

print(m.multiply_two(22,44))
# (110.0, 220.0)

print(build.mod_name.some_fn_in_python(8,9)) 
# 13.0 