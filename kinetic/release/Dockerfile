# davetcoleman/moveit_docker:moveit-kinetic-release
# Full debian-based install of MoveIt! using apt-get

FROM osrf/ros:kinetic-desktop
MAINTAINER Dave Coleman dave@dav.ee

# Temporary place-holder that does nothing
RUN apt-get update

# apt-commands are combined in single RUN statement with lists folder removal to reduce image size
#TODO uncomment once moveit kinetic is released
#RUN apt-get update && apt-get install -y \
#      ros-${ROS_DISTRO}-moveit-* \
#    && rm -rf /var/lib/apt/lists/*
#TODO RUN apt-get install -y ros-${ROS_DISTRO}-moveit-full
