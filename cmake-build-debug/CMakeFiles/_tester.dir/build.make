# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/clion-2019.2.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion-2019.2.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sergey/iz2copy

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sergey/iz2copy/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/_tester.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/_tester.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/_tester.dir/flags.make

CMakeFiles/_tester.dir/tests/stress_test.c.o: CMakeFiles/_tester.dir/flags.make
CMakeFiles/_tester.dir/tests/stress_test.c.o: ../tests/stress_test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sergey/iz2copy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/_tester.dir/tests/stress_test.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/_tester.dir/tests/stress_test.c.o   -c /home/sergey/iz2copy/tests/stress_test.c

CMakeFiles/_tester.dir/tests/stress_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/_tester.dir/tests/stress_test.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sergey/iz2copy/tests/stress_test.c > CMakeFiles/_tester.dir/tests/stress_test.c.i

CMakeFiles/_tester.dir/tests/stress_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/_tester.dir/tests/stress_test.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sergey/iz2copy/tests/stress_test.c -o CMakeFiles/_tester.dir/tests/stress_test.c.s

CMakeFiles/_tester.dir/tests/test.cpp.o: CMakeFiles/_tester.dir/flags.make
CMakeFiles/_tester.dir/tests/test.cpp.o: ../tests/test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sergey/iz2copy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/_tester.dir/tests/test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/_tester.dir/tests/test.cpp.o -c /home/sergey/iz2copy/tests/test.cpp

CMakeFiles/_tester.dir/tests/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/_tester.dir/tests/test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sergey/iz2copy/tests/test.cpp > CMakeFiles/_tester.dir/tests/test.cpp.i

CMakeFiles/_tester.dir/tests/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/_tester.dir/tests/test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sergey/iz2copy/tests/test.cpp -o CMakeFiles/_tester.dir/tests/test.cpp.s

CMakeFiles/_tester.dir/do_statistic.c.o: CMakeFiles/_tester.dir/flags.make
CMakeFiles/_tester.dir/do_statistic.c.o: ../do_statistic.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sergey/iz2copy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/_tester.dir/do_statistic.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/_tester.dir/do_statistic.c.o   -c /home/sergey/iz2copy/do_statistic.c

CMakeFiles/_tester.dir/do_statistic.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/_tester.dir/do_statistic.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sergey/iz2copy/do_statistic.c > CMakeFiles/_tester.dir/do_statistic.c.i

CMakeFiles/_tester.dir/do_statistic.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/_tester.dir/do_statistic.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sergey/iz2copy/do_statistic.c -o CMakeFiles/_tester.dir/do_statistic.c.s

# Object files for target _tester
_tester_OBJECTS = \
"CMakeFiles/_tester.dir/tests/stress_test.c.o" \
"CMakeFiles/_tester.dir/tests/test.cpp.o" \
"CMakeFiles/_tester.dir/do_statistic.c.o"

# External object files for target _tester
_tester_EXTERNAL_OBJECTS =

lib_tester.a: CMakeFiles/_tester.dir/tests/stress_test.c.o
lib_tester.a: CMakeFiles/_tester.dir/tests/test.cpp.o
lib_tester.a: CMakeFiles/_tester.dir/do_statistic.c.o
lib_tester.a: CMakeFiles/_tester.dir/build.make
lib_tester.a: CMakeFiles/_tester.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sergey/iz2copy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library lib_tester.a"
	$(CMAKE_COMMAND) -P CMakeFiles/_tester.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/_tester.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/_tester.dir/build: lib_tester.a

.PHONY : CMakeFiles/_tester.dir/build

CMakeFiles/_tester.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/_tester.dir/cmake_clean.cmake
.PHONY : CMakeFiles/_tester.dir/clean

CMakeFiles/_tester.dir/depend:
	cd /home/sergey/iz2copy/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sergey/iz2copy /home/sergey/iz2copy /home/sergey/iz2copy/cmake-build-debug /home/sergey/iz2copy/cmake-build-debug /home/sergey/iz2copy/cmake-build-debug/CMakeFiles/_tester.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/_tester.dir/depend
