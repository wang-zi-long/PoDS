set(_AMENT_PACKAGE_NAME "rcutils")
set(rcutils_VERSION "5.1.4")
set(rcutils_MAINTAINER "Chris Lalancette <clalancette@openrobotics.org>, Alejandro Hernandez Cordero <alejandro@openrobotics.org>")
set(rcutils_BUILD_DEPENDS "libatomic")
set(rcutils_BUILDTOOL_DEPENDS "ament_cmake_ros" "python3-empy")
set(rcutils_BUILD_EXPORT_DEPENDS "libatomic")
set(rcutils_BUILDTOOL_EXPORT_DEPENDS )
set(rcutils_EXEC_DEPENDS "libatomic")
set(rcutils_TEST_DEPENDS "ament_cmake_gmock" "ament_cmake_gtest" "ament_cmake_pytest" "ament_lint_common" "ament_lint_auto" "mimick_vendor" "launch" "launch_testing" "launch_testing_ament_cmake" "osrf_testing_tools_cpp" "performance_test_fixture")
set(rcutils_GROUP_DEPENDS )
set(rcutils_MEMBER_OF_GROUPS )
set(rcutils_DEPRECATED "")
set(rcutils_EXPORT_TAGS)
list(APPEND rcutils_EXPORT_TAGS "<build_type>ament_cmake</build_type>")
