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
CMAKE_SOURCE_DIR = /home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build

# Include any dependencies generated for this target.
include CMakeFiles/remote_lat.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/remote_lat.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/remote_lat.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/remote_lat.dir/flags.make

CMakeFiles/remote_lat.dir/perf/remote_lat.cpp.o: CMakeFiles/remote_lat.dir/flags.make
CMakeFiles/remote_lat.dir/perf/remote_lat.cpp.o: /home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/perf/remote_lat.cpp
CMakeFiles/remote_lat.dir/perf/remote_lat.cpp.o: CMakeFiles/remote_lat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/remote_lat.dir/perf/remote_lat.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/remote_lat.dir/perf/remote_lat.cpp.o -MF CMakeFiles/remote_lat.dir/perf/remote_lat.cpp.o.d -o CMakeFiles/remote_lat.dir/perf/remote_lat.cpp.o -c /home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/perf/remote_lat.cpp

CMakeFiles/remote_lat.dir/perf/remote_lat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/remote_lat.dir/perf/remote_lat.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/perf/remote_lat.cpp > CMakeFiles/remote_lat.dir/perf/remote_lat.cpp.i

CMakeFiles/remote_lat.dir/perf/remote_lat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/remote_lat.dir/perf/remote_lat.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/perf/remote_lat.cpp -o CMakeFiles/remote_lat.dir/perf/remote_lat.cpp.s

# Object files for target remote_lat
remote_lat_OBJECTS = \
"CMakeFiles/remote_lat.dir/perf/remote_lat.cpp.o"

# External object files for target remote_lat
remote_lat_EXTERNAL_OBJECTS =

bin/remote_lat: CMakeFiles/remote_lat.dir/perf/remote_lat.cpp.o
bin/remote_lat: CMakeFiles/remote_lat.dir/build.make
bin/remote_lat: lib/libzmq.so.5.2.5
bin/remote_lat: CMakeFiles/remote_lat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/remote_lat"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/remote_lat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/remote_lat.dir/build: bin/remote_lat
.PHONY : CMakeFiles/remote_lat.dir/build

CMakeFiles/remote_lat.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/remote_lat.dir/cmake_clean.cmake
.PHONY : CMakeFiles/remote_lat.dir/clean

CMakeFiles/remote_lat.dir/depend:
	cd /home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5 /home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5 /home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build /home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build /home/ubuntu/psd_ws/deps/not_mapped_dir/zeromq-4.3.5/build/CMakeFiles/remote_lat.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/remote_lat.dir/depend

