# moveit/moveit_docker:moveit-jade-release
# Full debian-based install of MoveIt! using apt-get

FROM osrf/ros:jade-desktop
MAINTAINER Dave Coleman dave@dav.ee

# apt-commands are combined in single RUN statement with lists folder removal to reduce image size
RUN apt-get update && apt-get install -y \
      ros-${ROS_DISTRO}-moveit-* \
    && rm -rf /var/lib/apt/lists/*
#TODO RUN apt-get install -y ros-${ROS_DISTRO}-moveit-full
