# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kalaivani/Documents/PyBinding

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kalaivani/Documents/PyBinding/build

# Include any dependencies generated for this target.
include CMakeFiles/mmul_mod.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/mmul_mod.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/mmul_mod.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mmul_mod.dir/flags.make

CMakeFiles/mmul_mod.dir/mmul.cpp.o: CMakeFiles/mmul_mod.dir/flags.make
CMakeFiles/mmul_mod.dir/mmul.cpp.o: ../mmul.cpp
CMakeFiles/mmul_mod.dir/mmul.cpp.o: CMakeFiles/mmul_mod.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalaivani/Documents/PyBinding/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mmul_mod.dir/mmul.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mmul_mod.dir/mmul.cpp.o -MF CMakeFiles/mmul_mod.dir/mmul.cpp.o.d -o CMakeFiles/mmul_mod.dir/mmul.cpp.o -c /home/kalaivani/Documents/PyBinding/mmul.cpp

CMakeFiles/mmul_mod.dir/mmul.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mmul_mod.dir/mmul.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalaivani/Documents/PyBinding/mmul.cpp > CMakeFiles/mmul_mod.dir/mmul.cpp.i

CMakeFiles/mmul_mod.dir/mmul.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mmul_mod.dir/mmul.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalaivani/Documents/PyBinding/mmul.cpp -o CMakeFiles/mmul_mod.dir/mmul.cpp.s

# Object files for target mmul_mod
mmul_mod_OBJECTS = \
"CMakeFiles/mmul_mod.dir/mmul.cpp.o"

# External object files for target mmul_mod
mmul_mod_EXTERNAL_OBJECTS =

mmul_mod.cpython-310-x86_64-linux-gnu.so: CMakeFiles/mmul_mod.dir/mmul.cpp.o
mmul_mod.cpython-310-x86_64-linux-gnu.so: CMakeFiles/mmul_mod.dir/build.make
mmul_mod.cpython-310-x86_64-linux-gnu.so: /usr/lib/x86_64-linux-gnu/libOpenCL.so
mmul_mod.cpython-310-x86_64-linux-gnu.so: CMakeFiles/mmul_mod.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kalaivani/Documents/PyBinding/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module mmul_mod.cpython-310-x86_64-linux-gnu.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mmul_mod.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/strip /home/kalaivani/Documents/PyBinding/build/mmul_mod.cpython-310-x86_64-linux-gnu.so

# Rule to build all files generated by this target.
CMakeFiles/mmul_mod.dir/build: mmul_mod.cpython-310-x86_64-linux-gnu.so
.PHONY : CMakeFiles/mmul_mod.dir/build

CMakeFiles/mmul_mod.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mmul_mod.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mmul_mod.dir/clean

CMakeFiles/mmul_mod.dir/depend:
	cd /home/kalaivani/Documents/PyBinding/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kalaivani/Documents/PyBinding /home/kalaivani/Documents/PyBinding /home/kalaivani/Documents/PyBinding/build /home/kalaivani/Documents/PyBinding/build /home/kalaivani/Documents/PyBinding/build/CMakeFiles/mmul_mod.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mmul_mod.dir/depend
