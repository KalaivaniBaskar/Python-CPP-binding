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
include CMakeFiles/mod_name.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/mod_name.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/mod_name.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mod_name.dir/flags.make

CMakeFiles/mod_name.dir/main.cpp.o: CMakeFiles/mod_name.dir/flags.make
CMakeFiles/mod_name.dir/main.cpp.o: ../main.cpp
CMakeFiles/mod_name.dir/main.cpp.o: CMakeFiles/mod_name.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalaivani/Documents/PyBinding/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mod_name.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mod_name.dir/main.cpp.o -MF CMakeFiles/mod_name.dir/main.cpp.o.d -o CMakeFiles/mod_name.dir/main.cpp.o -c /home/kalaivani/Documents/PyBinding/main.cpp

CMakeFiles/mod_name.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mod_name.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kalaivani/Documents/PyBinding/main.cpp > CMakeFiles/mod_name.dir/main.cpp.i

CMakeFiles/mod_name.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mod_name.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kalaivani/Documents/PyBinding/main.cpp -o CMakeFiles/mod_name.dir/main.cpp.s

# Object files for target mod_name
mod_name_OBJECTS = \
"CMakeFiles/mod_name.dir/main.cpp.o"

# External object files for target mod_name
mod_name_EXTERNAL_OBJECTS =

mod_name.cpython-310-x86_64-linux-gnu.so: CMakeFiles/mod_name.dir/main.cpp.o
mod_name.cpython-310-x86_64-linux-gnu.so: CMakeFiles/mod_name.dir/build.make
mod_name.cpython-310-x86_64-linux-gnu.so: CMakeFiles/mod_name.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kalaivani/Documents/PyBinding/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module mod_name.cpython-310-x86_64-linux-gnu.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mod_name.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/strip /home/kalaivani/Documents/PyBinding/build/mod_name.cpython-310-x86_64-linux-gnu.so

# Rule to build all files generated by this target.
CMakeFiles/mod_name.dir/build: mod_name.cpython-310-x86_64-linux-gnu.so
.PHONY : CMakeFiles/mod_name.dir/build

CMakeFiles/mod_name.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mod_name.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mod_name.dir/clean

CMakeFiles/mod_name.dir/depend:
	cd /home/kalaivani/Documents/PyBinding/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kalaivani/Documents/PyBinding /home/kalaivani/Documents/PyBinding /home/kalaivani/Documents/PyBinding/build /home/kalaivani/Documents/PyBinding/build /home/kalaivani/Documents/PyBinding/build/CMakeFiles/mod_name.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mod_name.dir/depend

