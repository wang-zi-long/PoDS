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
CMAKE_SOURCE_DIR = /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/uros/micro_ros_utilities

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/micro_ros_utilities

# Include any dependencies generated for this target.
include CMakeFiles/micro_ros_utilities.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/micro_ros_utilities.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/micro_ros_utilities.dir/flags.make

CMakeFiles/micro_ros_utilities.dir/src/string_utilities.c.obj: CMakeFiles/micro_ros_utilities.dir/flags.make
CMakeFiles/micro_ros_utilities.dir/src/string_utilities.c.obj: /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/uros/micro_ros_utilities/src/string_utilities.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/micro_ros_utilities/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/micro_ros_utilities.dir/src/string_utilities.c.obj"
	/home/neu/Desktop/micro-ROS/microros_767/firmware/freertos_apps/microros_nucleo_f767zi_extensions/../../toolchain/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/micro_ros_utilities.dir/src/string_utilities.c.obj   -c /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/uros/micro_ros_utilities/src/string_utilities.c

CMakeFiles/micro_ros_utilities.dir/src/string_utilities.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/micro_ros_utilities.dir/src/string_utilities.c.i"
	/home/neu/Desktop/micro-ROS/microros_767/firmware/freertos_apps/microros_nucleo_f767zi_extensions/../../toolchain/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/uros/micro_ros_utilities/src/string_utilities.c > CMakeFiles/micro_ros_utilities.dir/src/string_utilities.c.i

CMakeFiles/micro_ros_utilities.dir/src/string_utilities.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/micro_ros_utilities.dir/src/string_utilities.c.s"
	/home/neu/Desktop/micro-ROS/microros_767/firmware/freertos_apps/microros_nucleo_f767zi_extensions/../../toolchain/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/uros/micro_ros_utilities/src/string_utilities.c -o CMakeFiles/micro_ros_utilities.dir/src/string_utilities.c.s

CMakeFiles/micro_ros_utilities.dir/src/type_utilities.c.obj: CMakeFiles/micro_ros_utilities.dir/flags.make
CMakeFiles/micro_ros_utilities.dir/src/type_utilities.c.obj: /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/uros/micro_ros_utilities/src/type_utilities.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/micro_ros_utilities/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/micro_ros_utilities.dir/src/type_utilities.c.obj"
	/home/neu/Desktop/micro-ROS/microros_767/firmware/freertos_apps/microros_nucleo_f767zi_extensions/../../toolchain/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/micro_ros_utilities.dir/src/type_utilities.c.obj   -c /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/uros/micro_ros_utilities/src/type_utilities.c

CMakeFiles/micro_ros_utilities.dir/src/type_utilities.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/micro_ros_utilities.dir/src/type_utilities.c.i"
	/home/neu/Desktop/micro-ROS/microros_767/firmware/freertos_apps/microros_nucleo_f767zi_extensions/../../toolchain/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/uros/micro_ros_utilities/src/type_utilities.c > CMakeFiles/micro_ros_utilities.dir/src/type_utilities.c.i

CMakeFiles/micro_ros_utilities.dir/src/type_utilities.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/micro_ros_utilities.dir/src/type_utilities.c.s"
	/home/neu/Desktop/micro-ROS/microros_767/firmware/freertos_apps/microros_nucleo_f767zi_extensions/../../toolchain/bin/arm-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/uros/micro_ros_utilities/src/type_utilities.c -o CMakeFiles/micro_ros_utilities.dir/src/type_utilities.c.s

# Object files for target micro_ros_utilities
micro_ros_utilities_OBJECTS = \
"CMakeFiles/micro_ros_utilities.dir/src/string_utilities.c.obj" \
"CMakeFiles/micro_ros_utilities.dir/src/type_utilities.c.obj"

# External object files for target micro_ros_utilities
micro_ros_utilities_EXTERNAL_OBJECTS =

libmicro_ros_utilities.a: CMakeFiles/micro_ros_utilities.dir/src/string_utilities.c.obj
libmicro_ros_utilities.a: CMakeFiles/micro_ros_utilities.dir/src/type_utilities.c.obj
libmicro_ros_utilities.a: CMakeFiles/micro_ros_utilities.dir/build.make
libmicro_ros_utilities.a: CMakeFiles/micro_ros_utilities.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/micro_ros_utilities/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libmicro_ros_utilities.a"
	$(CMAKE_COMMAND) -P CMakeFiles/micro_ros_utilities.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/micro_ros_utilities.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/micro_ros_utilities.dir/build: libmicro_ros_utilities.a

.PHONY : CMakeFiles/micro_ros_utilities.dir/build

CMakeFiles/micro_ros_utilities.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/micro_ros_utilities.dir/cmake_clean.cmake
.PHONY : CMakeFiles/micro_ros_utilities.dir/clean

CMakeFiles/micro_ros_utilities.dir/depend:
	cd /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/micro_ros_utilities && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/uros/micro_ros_utilities /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/uros/micro_ros_utilities /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/micro_ros_utilities /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/micro_ros_utilities /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/micro_ros_utilities/CMakeFiles/micro_ros_utilities.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/micro_ros_utilities.dir/depend

