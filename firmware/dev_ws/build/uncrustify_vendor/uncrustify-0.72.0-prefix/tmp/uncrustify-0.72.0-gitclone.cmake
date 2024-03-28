
if(NOT "/home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0-stamp/uncrustify-0.72.0-gitinfo.txt" IS_NEWER_THAN "/home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0-stamp/uncrustify-0.72.0-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0-stamp/uncrustify-0.72.0-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E remove_directory "/home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout --config advice.detachedHead=false "https://github.com/uncrustify/uncrustify.git" "uncrustify-0.72.0"
    WORKING_DIRECTORY "/home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/uncrustify/uncrustify.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout 1d3d8fa5e81bece0fac4b81316b0844f7cc35926 --
  WORKING_DIRECTORY "/home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: '1d3d8fa5e81bece0fac4b81316b0844f7cc35926'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0-stamp/uncrustify-0.72.0-gitinfo.txt"
    "/home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0-stamp/uncrustify-0.72.0-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/build/uncrustify_vendor/uncrustify-0.72.0-prefix/src/uncrustify-0.72.0-stamp/uncrustify-0.72.0-gitclone-lastrun.txt'")
endif()

