# Install script for directory: /home/neu/Desktop/micro-ROS/microros_767/src/uros/micro-ROS-Agent/micro_ros_agent

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/neu/Desktop/micro-ROS/microros_767/install/micro_ros_agent")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/package_run_dependencies" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/build/micro_ros_agent/ament_cmake_index/share/ament_index/resource_index/package_run_dependencies/micro_ros_agent")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/parent_prefix_path" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/build/micro_ros_agent/ament_cmake_index/share/ament_index/resource_index/parent_prefix_path/micro_ros_agent")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/micro_ros_agent/environment" TYPE FILE FILES "/home/neu/ros2_humble/install/ament_cmake_core/share/ament_cmake_core/cmake/environment_hooks/environment/ament_prefix_path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/micro_ros_agent/environment" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/build/micro_ros_agent/ament_cmake_environment_hooks/ament_prefix_path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/micro_ros_agent/environment" TYPE FILE FILES "/home/neu/ros2_humble/install/ament_cmake_core/share/ament_cmake_core/cmake/environment_hooks/environment/path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/micro_ros_agent/environment" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/build/micro_ros_agent/ament_cmake_environment_hooks/path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/micro_ros_agent" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/build/micro_ros_agent/ament_cmake_environment_hooks/local_setup.bash")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/micro_ros_agent" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/build/micro_ros_agent/ament_cmake_environment_hooks/local_setup.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/micro_ros_agent" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/build/micro_ros_agent/ament_cmake_environment_hooks/local_setup.zsh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/micro_ros_agent" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/build/micro_ros_agent/ament_cmake_environment_hooks/local_setup.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/micro_ros_agent" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/build/micro_ros_agent/ament_cmake_environment_hooks/package.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/packages" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/build/micro_ros_agent/ament_cmake_index/share/ament_index/resource_index/packages/micro_ros_agent")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/micro_ros_agent/cmake" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/build/micro_ros_agent/ament_cmake_export_dependencies/ament_cmake_export_dependencies-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/micro_ros_agent/cmake" TYPE FILE FILES
    "/home/neu/Desktop/micro-ROS/microros_767/build/micro_ros_agent/ament_cmake_core/micro_ros_agentConfig.cmake"
    "/home/neu/Desktop/micro-ROS/microros_767/build/micro_ros_agent/ament_cmake_core/micro_ros_agentConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/micro_ros_agent" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/src/uros/micro-ROS-Agent/micro_ros_agent/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/micro_ros_agent/micro_ros_agent" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/micro_ros_agent/micro_ros_agent")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/micro_ros_agent/micro_ros_agent"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/micro_ros_agent" TYPE EXECUTABLE FILES "/home/neu/Desktop/micro-ROS/microros_767/build/micro_ros_agent/micro_ros_agent")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/micro_ros_agent/micro_ros_agent" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/micro_ros_agent/micro_ros_agent")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/micro_ros_agent/micro_ros_agent"
         OLD_RPATH "/home/neu/ros2_humble/install/rmw_fastrtps_shared_cpp/lib:/home/neu/Desktop/micro-ROS/microros_767/install/micro_ros_msgs/lib:/home/neu/Desktop/micro-ROS/microros_767/install/micro_ros_agent/lib:/home/neu/ros2_humble/install/fastrtps/lib:/home/neu/ros2_humble/install/rmw_dds_common/lib:/home/neu/ros2_humble/install/tracetools/lib:/home/neu/ros2_humble/install/rosidl_typesupport_fastrtps_c/lib:/home/neu/ros2_humble/install/rosidl_typesupport_introspection_cpp/lib:/home/neu/ros2_humble/install/rosidl_typesupport_introspection_c/lib:/home/neu/ros2_humble/install/rosidl_typesupport_fastrtps_cpp/lib:/home/neu/ros2_humble/install/rmw/lib:/home/neu/ros2_humble/install/rosidl_typesupport_cpp/lib:/home/neu/ros2_humble/install/rosidl_typesupport_c/lib:/home/neu/ros2_humble/install/rosidl_runtime_c/lib:/home/neu/ros2_humble/install/rcpputils/lib:/home/neu/ros2_humble/install/rcutils/lib:/home/neu/ros2_humble/install/fastcdr/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/micro_ros_agent/micro_ros_agent")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/micro_ros_agent" TYPE DIRECTORY FILES "/home/neu/Desktop/micro-ROS/microros_767/src/uros/micro-ROS-Agent/micro_ros_agent/launch")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/neu/Desktop/micro-ROS/microros_767/build/micro_ros_agent/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
