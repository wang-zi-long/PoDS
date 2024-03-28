# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/eProsima/Micro-CDR

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr

# Utility rule file for ucdr.

# Include the progress variables for this target.
include CMakeFiles/ucdr.dir/progress.make

CMakeFiles/ucdr: CMakeFiles/ucdr-complete


CMakeFiles/ucdr-complete: ucdr-prefix/src/ucdr-stamp/ucdr-install
CMakeFiles/ucdr-complete: ucdr-prefix/src/ucdr-stamp/ucdr-mkdir
CMakeFiles/ucdr-complete: ucdr-prefix/src/ucdr-stamp/ucdr-download
CMakeFiles/ucdr-complete: ucdr-prefix/src/ucdr-stamp/ucdr-update
CMakeFiles/ucdr-complete: ucdr-prefix/src/ucdr-stamp/ucdr-patch
CMakeFiles/ucdr-complete: ucdr-prefix/src/ucdr-stamp/ucdr-configure
CMakeFiles/ucdr-complete: ucdr-prefix/src/ucdr-stamp/ucdr-build
CMakeFiles/ucdr-complete: ucdr-prefix/src/ucdr-stamp/ucdr-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'ucdr'"
	/usr/bin/cmake -E make_directory /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/CMakeFiles
	/usr/bin/cmake -E touch /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/CMakeFiles/ucdr-complete
	/usr/bin/cmake -E touch /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/ucdr-prefix/src/ucdr-stamp/ucdr-done

ucdr-prefix/src/ucdr-stamp/ucdr-install: ucdr-prefix/src/ucdr-stamp/ucdr-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'ucdr'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/ucdr-prefix/src/ucdr-stamp/ucdr-install

ucdr-prefix/src/ucdr-stamp/ucdr-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'ucdr'"
	/usr/bin/cmake -E make_directory /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/eProsima/Micro-CDR
	/usr/bin/cmake -E make_directory /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr
	/usr/bin/cmake -E make_directory /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/ucdr-prefix
	/usr/bin/cmake -E make_directory /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/ucdr-prefix/tmp
	/usr/bin/cmake -E make_directory /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/ucdr-prefix/src/ucdr-stamp
	/usr/bin/cmake -E make_directory /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/ucdr-prefix/src
	/usr/bin/cmake -E make_directory /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/ucdr-prefix/src/ucdr-stamp
	/usr/bin/cmake -E touch /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/ucdr-prefix/src/ucdr-stamp/ucdr-mkdir

ucdr-prefix/src/ucdr-stamp/ucdr-download: ucdr-prefix/src/ucdr-stamp/ucdr-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "No download step for 'ucdr'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/ucdr-prefix/src/ucdr-stamp/ucdr-download

ucdr-prefix/src/ucdr-stamp/ucdr-update: ucdr-prefix/src/ucdr-stamp/ucdr-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'ucdr'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/ucdr-prefix/src/ucdr-stamp/ucdr-update

ucdr-prefix/src/ucdr-stamp/ucdr-patch: ucdr-prefix/src/ucdr-stamp/ucdr-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'ucdr'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/ucdr-prefix/src/ucdr-stamp/ucdr-patch

ucdr-prefix/src/ucdr-stamp/ucdr-configure: ucdr-prefix/tmp/ucdr-cfgcmd.txt
ucdr-prefix/src/ucdr-stamp/ucdr-configure: ucdr-prefix/src/ucdr-stamp/ucdr-update
ucdr-prefix/src/ucdr-stamp/ucdr-configure: ucdr-prefix/src/ucdr-stamp/ucdr-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'ucdr'"
	/usr/bin/cmake "-GUnix Makefiles" -C/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/ucdr-prefix/tmp/ucdr-cache-Release.cmake /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/eProsima/Micro-CDR
	/usr/bin/cmake -E touch /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/ucdr-prefix/src/ucdr-stamp/ucdr-configure

ucdr-prefix/src/ucdr-stamp/ucdr-build: ucdr-prefix/src/ucdr-stamp/ucdr-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'ucdr'"
	$(MAKE)
	/usr/bin/cmake -E touch /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/ucdr-prefix/src/ucdr-stamp/ucdr-build

ucdr: CMakeFiles/ucdr
ucdr: CMakeFiles/ucdr-complete
ucdr: ucdr-prefix/src/ucdr-stamp/ucdr-install
ucdr: ucdr-prefix/src/ucdr-stamp/ucdr-mkdir
ucdr: ucdr-prefix/src/ucdr-stamp/ucdr-download
ucdr: ucdr-prefix/src/ucdr-stamp/ucdr-update
ucdr: ucdr-prefix/src/ucdr-stamp/ucdr-patch
ucdr: ucdr-prefix/src/ucdr-stamp/ucdr-configure
ucdr: ucdr-prefix/src/ucdr-stamp/ucdr-build
ucdr: CMakeFiles/ucdr.dir/build.make

.PHONY : ucdr

# Rule to build all files generated by this target.
CMakeFiles/ucdr.dir/build: ucdr

.PHONY : CMakeFiles/ucdr.dir/build

CMakeFiles/ucdr.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ucdr.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ucdr.dir/clean

CMakeFiles/ucdr.dir/depend:
	cd /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/eProsima/Micro-CDR /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/eProsima/Micro-CDR /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/microcdr/CMakeFiles/ucdr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ucdr.dir/depend

