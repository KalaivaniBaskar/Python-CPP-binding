import build.mod_name 
from build.mod_name import * 

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