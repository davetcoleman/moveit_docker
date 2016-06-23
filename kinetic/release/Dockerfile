# davetcoleman/moveit_docker:moveit-kinetic-release
# Full debian-based install of MoveIt! using apt-get

FROM osrf/ros:kinetic-desktop
MAINTAINER Dave Coleman dave@dav.ee

# apt-commands are combined in single RUN statement with lists folder removal to reduce image size
RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y ros-kinetic-moveit-* \
 && rm -rf /var/lib/apt/lists/*
#TODO RUN apt-get install -y ros-kinetic-moveit-full
