# CMake generated Testfile for 
# Source directory: /home/psd/psd_ws/src/ros-controls/ros2_control_demos/example_10
# Build directory: /home/psd/psd_ws/build/ros2_control_demo_example_10
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(example_10_urdf_xacro "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/home/psd/psd_ws/build/ros2_control_demo_example_10/test_results/ros2_control_demo_example_10/example_10_urdf_xacro.xunit.xml" "--package-name" "ros2_control_demo_example_10" "--output-file" "/home/psd/psd_ws/build/ros2_control_demo_example_10/ament_cmake_pytest/example_10_urdf_xacro.txt" "--command" "/usr/bin/python3" "-u" "-m" "pytest" "/home/psd/psd_ws/src/ros-controls/ros2_control_demos/example_10/test/test_urdf_xacro.py" "-o" "cache_dir=/home/psd/psd_ws/build/ros2_control_demo_example_10/ament_cmake_pytest/example_10_urdf_xacro/.cache" "--junit-xml=/home/psd/psd_ws/build/ros2_control_demo_example_10/test_results/ros2_control_demo_example_10/example_10_urdf_xacro.xunit.xml" "--junit-prefix=ros2_control_demo_example_10")
set_tests_properties(example_10_urdf_xacro PROPERTIES  LABELS "pytest" TIMEOUT "60" WORKING_DIRECTORY "/home/psd/psd_ws/build/ros2_control_demo_example_10" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_pytest/cmake/ament_add_pytest_test.cmake;169;ament_add_test;/home/psd/psd_ws/src/ros-controls/ros2_control_demos/example_10/CMakeLists.txt;80;ament_add_pytest_test;/home/psd/psd_ws/src/ros-controls/ros2_control_demos/example_10/CMakeLists.txt;0;")
add_test(view_example_10_launch "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/home/psd/psd_ws/build/ros2_control_demo_example_10/test_results/ros2_control_demo_example_10/view_example_10_launch.xunit.xml" "--package-name" "ros2_control_demo_example_10" "--output-file" "/home/psd/psd_ws/build/ros2_control_demo_example_10/ament_cmake_pytest/view_example_10_launch.txt" "--command" "/usr/bin/python3" "-u" "-m" "pytest" "/home/psd/psd_ws/src/ros-controls/ros2_control_demos/example_10/test/test_view_robot_launch.py" "-o" "cache_dir=/home/psd/psd_ws/build/ros2_control_demo_example_10/ament_cmake_pytest/view_example_10_launch/.cache" "--junit-xml=/home/psd/psd_ws/build/ros2_control_demo_example_10/test_results/ros2_control_demo_example_10/view_example_10_launch.xunit.xml" "--junit-prefix=ros2_control_demo_example_10")
set_tests_properties(view_example_10_launch PROPERTIES  LABELS "pytest" TIMEOUT "60" WORKING_DIRECTORY "/home/psd/psd_ws/build/ros2_control_demo_example_10" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_pytest/cmake/ament_add_pytest_test.cmake;169;ament_add_test;/home/psd/psd_ws/src/ros-controls/ros2_control_demos/example_10/CMakeLists.txt;81;ament_add_pytest_test;/home/psd/psd_ws/src/ros-controls/ros2_control_demos/example_10/CMakeLists.txt;0;")
