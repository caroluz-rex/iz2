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
include CMakeFiles/run_and_write.out.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/run_and_write.out.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/run_and_write.out.dir/flags.make

CMakeFiles/run_and_write.out.dir/run_and_write.c.o: CMakeFiles/run_and_write.out.dir/flags.make
CMakeFiles/run_and_write.out.dir/run_and_write.c.o: ../run_and_write.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sergey/iz2copy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/run_and_write.out.dir/run_and_write.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/run_and_write.out.dir/run_and_write.c.o   -c /home/sergey/iz2copy/run_and_write.c

CMakeFiles/run_and_write.out.dir/run_and_write.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/run_and_write.out.dir/run_and_write.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sergey/iz2copy/run_and_write.c > CMakeFiles/run_and_write.out.dir/run_and_write.c.i

CMakeFiles/run_and_write.out.dir/run_and_write.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/run_and_write.out.dir/run_and_write.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sergey/iz2copy/run_and_write.c -o CMakeFiles/run_and_write.out.dir/run_and_write.c.s

# Object files for target run_and_write.out
run_and_write_out_OBJECTS = \
"CMakeFiles/run_and_write.out.dir/run_and_write.c.o"

# External object files for target run_and_write.out
run_and_write_out_EXTERNAL_OBJECTS =

run_and_write.out: CMakeFiles/run_and_write.out.dir/run_and_write.c.o
run_and_write.out: CMakeFiles/run_and_write.out.dir/build.make
run_and_write.out: /usr/lib/libgtest.a
run_and_write.out: CMakeFiles/run_and_write.out.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sergey/iz2copy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable run_and_write.out"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/run_and_write.out.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/run_and_write.out.dir/build: run_and_write.out

.PHONY : CMakeFiles/run_and_write.out.dir/build

CMakeFiles/run_and_write.out.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/run_and_write.out.dir/cmake_clean.cmake
.PHONY : CMakeFiles/run_and_write.out.dir/clean

CMakeFiles/run_and_write.out.dir/depend:
	cd /home/sergey/iz2copy/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sergey/iz2copy /home/sergey/iz2copy /home/sergey/iz2copy/cmake-build-debug /home/sergey/iz2copy/cmake-build-debug /home/sergey/iz2copy/cmake-build-debug/CMakeFiles/run_and_write.out.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/run_and_write.out.dir/depend
