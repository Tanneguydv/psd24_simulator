sudo apt update
sudo apt upgrade -y

export PSD_ROS_BUILD_TYPE=simulation
export SIMULATION_ENGINE=ignition-gazebo

rosdep update --rosdistro $ROS_DISTRO
rosdep install -i --from-path src --rosdistro $ROS_DISTRO -y
colcon build
