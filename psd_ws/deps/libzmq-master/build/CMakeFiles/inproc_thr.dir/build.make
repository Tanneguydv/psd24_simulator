# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/ubuntu/psd_ws/deps/libzmq-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/psd_ws/deps/libzmq-master/build

# Include any dependencies generated for this target.
include CMakeFiles/inproc_thr.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/inproc_thr.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/inproc_thr.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/inproc_thr.dir/flags.make

CMakeFiles/inproc_thr.dir/perf/inproc_thr.cpp.o: CMakeFiles/inproc_thr.dir/flags.make
CMakeFiles/inproc_thr.dir/perf/inproc_thr.cpp.o: /home/ubuntu/psd_ws/deps/libzmq-master/perf/inproc_thr.cpp
CMakeFiles/inproc_thr.dir/perf/inproc_thr.cpp.o: CMakeFiles/inproc_thr.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ubuntu/psd_ws/deps/libzmq-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/inproc_thr.dir/perf/inproc_thr.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/inproc_thr.dir/perf/inproc_thr.cpp.o -MF CMakeFiles/inproc_thr.dir/perf/inproc_thr.cpp.o.d -o CMakeFiles/inproc_thr.dir/perf/inproc_thr.cpp.o -c /home/ubuntu/psd_ws/deps/libzmq-master/perf/inproc_thr.cpp

CMakeFiles/inproc_thr.dir/perf/inproc_thr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/inproc_thr.dir/perf/inproc_thr.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/psd_ws/deps/libzmq-master/perf/inproc_thr.cpp > CMakeFiles/inproc_thr.dir/perf/inproc_thr.cpp.i

CMakeFiles/inproc_thr.dir/perf/inproc_thr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/inproc_thr.dir/perf/inproc_thr.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/psd_ws/deps/libzmq-master/perf/inproc_thr.cpp -o CMakeFiles/inproc_thr.dir/perf/inproc_thr.cpp.s

# Object files for target inproc_thr
inproc_thr_OBJECTS = \
"CMakeFiles/inproc_thr.dir/perf/inproc_thr.cpp.o"

# External object files for target inproc_thr
inproc_thr_EXTERNAL_OBJECTS =

bin/inproc_thr: CMakeFiles/inproc_thr.dir/perf/inproc_thr.cpp.o
bin/inproc_thr: CMakeFiles/inproc_thr.dir/build.make
bin/inproc_thr: lib/libzmq.so.5.2.6
bin/inproc_thr: CMakeFiles/inproc_thr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ubuntu/psd_ws/deps/libzmq-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/inproc_thr"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/inproc_thr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/inproc_thr.dir/build: bin/inproc_thr
.PHONY : CMakeFiles/inproc_thr.dir/build

CMakeFiles/inproc_thr.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/inproc_thr.dir/cmake_clean.cmake
.PHONY : CMakeFiles/inproc_thr.dir/clean

CMakeFiles/inproc_thr.dir/depend:
	cd /home/ubuntu/psd_ws/deps/libzmq-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/psd_ws/deps/libzmq-master /home/ubuntu/psd_ws/deps/libzmq-master /home/ubuntu/psd_ws/deps/libzmq-master/build /home/ubuntu/psd_ws/deps/libzmq-master/build /home/ubuntu/psd_ws/deps/libzmq-master/build/CMakeFiles/inproc_thr.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/inproc_thr.dir/depend

