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
CMAKE_SOURCE_DIR = /home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0-build

# Utility rule file for format-combine_labels.cpp.

# Include the progress variables for this target.
include CMakeFiles/format-combine_labels.cpp.dir/progress.make

CMakeFiles/format-combine_labels.cpp:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Formatting src/combine_labels.cpp"
	cd /home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0 && /home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0-build/uncrustify -c forUncrustifySources.cfg -lCPP --no-backup src/combine_labels.cpp

format-combine_labels.cpp: CMakeFiles/format-combine_labels.cpp
format-combine_labels.cpp: CMakeFiles/format-combine_labels.cpp.dir/build.make

.PHONY : format-combine_labels.cpp

# Rule to build all files generated by this target.
CMakeFiles/format-combine_labels.cpp.dir/build: format-combine_labels.cpp

.PHONY : CMakeFiles/format-combine_labels.cpp.dir/build

CMakeFiles/format-combine_labels.cpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/format-combine_labels.cpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/format-combine_labels.cpp.dir/clean

CMakeFiles/format-combine_labels.cpp.dir/depend:
	cd /home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0 /home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0 /home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0-build /home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0-build /home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0-build/CMakeFiles/format-combine_labels.cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/format-combine_labels.cpp.dir/depend

