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
include CMakeFiles/_statistic.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/_statistic.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/_statistic.dir/flags.make

CMakeFiles/_statistic.dir/run_and_write.c.o: CMakeFiles/_statistic.dir/flags.make
CMakeFiles/_statistic.dir/run_and_write.c.o: ../run_and_write.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sergey/iz2copy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/_statistic.dir/run_and_write.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/_statistic.dir/run_and_write.c.o   -c /home/sergey/iz2copy/run_and_write.c

CMakeFiles/_statistic.dir/run_and_write.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/_statistic.dir/run_and_write.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sergey/iz2copy/run_and_write.c > CMakeFiles/_statistic.dir/run_and_write.c.i

CMakeFiles/_statistic.dir/run_and_write.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/_statistic.dir/run_and_write.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sergey/iz2copy/run_and_write.c -o CMakeFiles/_statistic.dir/run_and_write.c.s

CMakeFiles/_statistic.dir/main.c.o: CMakeFiles/_statistic.dir/flags.make
CMakeFiles/_statistic.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sergey/iz2copy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/_statistic.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/_statistic.dir/main.c.o   -c /home/sergey/iz2copy/main.c

CMakeFiles/_statistic.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/_statistic.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sergey/iz2copy/main.c > CMakeFiles/_statistic.dir/main.c.i

CMakeFiles/_statistic.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/_statistic.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sergey/iz2copy/main.c -o CMakeFiles/_statistic.dir/main.c.s

CMakeFiles/_statistic.dir/do_statistic.c.o: CMakeFiles/_statistic.dir/flags.make
CMakeFiles/_statistic.dir/do_statistic.c.o: ../do_statistic.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sergey/iz2copy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/_statistic.dir/do_statistic.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/_statistic.dir/do_statistic.c.o   -c /home/sergey/iz2copy/do_statistic.c

CMakeFiles/_statistic.dir/do_statistic.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/_statistic.dir/do_statistic.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sergey/iz2copy/do_statistic.c > CMakeFiles/_statistic.dir/do_statistic.c.i

CMakeFiles/_statistic.dir/do_statistic.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/_statistic.dir/do_statistic.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sergey/iz2copy/do_statistic.c -o CMakeFiles/_statistic.dir/do_statistic.c.s

# Object files for target _statistic
_statistic_OBJECTS = \
"CMakeFiles/_statistic.dir/run_and_write.c.o" \
"CMakeFiles/_statistic.dir/main.c.o" \
"CMakeFiles/_statistic.dir/do_statistic.c.o"

# External object files for target _statistic
_statistic_EXTERNAL_OBJECTS =

lib_statistic.so: CMakeFiles/_statistic.dir/run_and_write.c.o
lib_statistic.so: CMakeFiles/_statistic.dir/main.c.o
lib_statistic.so: CMakeFiles/_statistic.dir/do_statistic.c.o
lib_statistic.so: CMakeFiles/_statistic.dir/build.make
lib_statistic.so: CMakeFiles/_statistic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sergey/iz2copy/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C shared library lib_statistic.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/_statistic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/_statistic.dir/build: lib_statistic.so

.PHONY : CMakeFiles/_statistic.dir/build

CMakeFiles/_statistic.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/_statistic.dir/cmake_clean.cmake
.PHONY : CMakeFiles/_statistic.dir/clean

CMakeFiles/_statistic.dir/depend:
	cd /home/sergey/iz2copy/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sergey/iz2copy /home/sergey/iz2copy /home/sergey/iz2copy/cmake-build-debug /home/sergey/iz2copy/cmake-build-debug /home/sergey/iz2copy/cmake-build-debug/CMakeFiles/_statistic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/_statistic.dir/depend

