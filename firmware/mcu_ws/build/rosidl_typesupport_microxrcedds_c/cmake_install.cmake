# Install script for directory: /home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/uros/rosidl_typesupport_microxrcedds/rosidl_typesupport_microxrcedds_c

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/install/rosidl_typesupport_microxrcedds_c")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "1")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c/environment" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_environment_hooks/pythonpath.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c/environment" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_environment_hooks/pythonpath.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.8/site-packages/rosidl_typesupport_microxrcedds_c-3.0.1-py3.8.egg-info" TYPE DIRECTORY FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_python/rosidl_typesupport_microxrcedds_c/rosidl_typesupport_microxrcedds_c.egg-info/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.8/site-packages/rosidl_typesupport_microxrcedds_c" TYPE DIRECTORY FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/uros/rosidl_typesupport_microxrcedds/rosidl_typesupport_microxrcedds_c/rosidl_typesupport_microxrcedds_c/" REGEX "/[^/]*\\.pyc$" EXCLUDE REGEX "/\\_\\_pycache\\_\\_$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(
        COMMAND
        "/usr/bin/python3.8" "-m" "compileall"
        "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/install/rosidl_typesupport_microxrcedds_c/lib/python3.8/site-packages/rosidl_typesupport_microxrcedds_c"
      )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c/environment" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/install/ament_package/lib/python3.8/site-packages/ament_package/template/environment_hook/library_path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c/environment" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_environment_hooks/library_path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/rosidl_typesupport_c" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_index/share/ament_index/resource_index/rosidl_typesupport_c/rosidl_typesupport_microxrcedds_c")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/package_run_dependencies" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_index/share/ament_index/resource_index/package_run_dependencies/rosidl_typesupport_microxrcedds_c")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/parent_prefix_path" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_index/share/ament_index/resource_index/parent_prefix_path/rosidl_typesupport_microxrcedds_c")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c/environment" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/install/ament_cmake_core/share/ament_cmake_core/cmake/environment_hooks/environment/ament_prefix_path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c/environment" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_environment_hooks/ament_prefix_path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c/environment" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/dev_ws/install/ament_cmake_core/share/ament_cmake_core/cmake/environment_hooks/environment/path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c/environment" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_environment_hooks/path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_environment_hooks/local_setup.bash")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_environment_hooks/local_setup.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_environment_hooks/local_setup.zsh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_environment_hooks/local_setup.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_environment_hooks/package.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/packages" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_index/share/ament_index/resource_index/packages/rosidl_typesupport_microxrcedds_c")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c/cmake/rosidl_typesupport_microxrcedds_cExport.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c/cmake/rosidl_typesupport_microxrcedds_cExport.cmake"
         "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/CMakeFiles/Export/share/rosidl_typesupport_microxrcedds_c/cmake/rosidl_typesupport_microxrcedds_cExport.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c/cmake/rosidl_typesupport_microxrcedds_cExport-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c/cmake/rosidl_typesupport_microxrcedds_cExport.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c/cmake" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/CMakeFiles/Export/share/rosidl_typesupport_microxrcedds_c/cmake/rosidl_typesupport_microxrcedds_cExport.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c/cmake" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/CMakeFiles/Export/share/rosidl_typesupport_microxrcedds_c/cmake/rosidl_typesupport_microxrcedds_cExport-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c/cmake" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_core/rosidl_typesupport_microxrcedds_c-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c/cmake" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_export_dependencies/ament_cmake_export_dependencies-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c/cmake" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_export_include_directories/ament_cmake_export_include_directories-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c/cmake" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_export_libraries/ament_cmake_export_libraries-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c/cmake" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_export_targets/ament_cmake_export_targets-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c/cmake" TYPE FILE FILES
    "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_core/rosidl_typesupport_microxrcedds_cConfig.cmake"
    "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/ament_cmake_core/rosidl_typesupport_microxrcedds_cConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c" TYPE FILE FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/uros/rosidl_typesupport_microxrcedds/rosidl_typesupport_microxrcedds_c/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/rosidl_typesupport_microxrcedds_c" TYPE PROGRAM FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/uros/rosidl_typesupport_microxrcedds/rosidl_typesupport_microxrcedds_c/main/rosidl_typesupport_microxrcedds_c")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rosidl_typesupport_microxrcedds_c" TYPE DIRECTORY FILES
    "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/uros/rosidl_typesupport_microxrcedds/rosidl_typesupport_microxrcedds_c/cmake"
    "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/uros/rosidl_typesupport_microxrcedds/rosidl_typesupport_microxrcedds_c/resource"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/uros/rosidl_typesupport_microxrcedds/rosidl_typesupport_microxrcedds_c/include/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/librosidl_typesupport_microxrcedds_c.a")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/neu/Desktop/micro-ROS/microros_767/firmware/mcu_ws/build/rosidl_typesupport_microxrcedds_c/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
