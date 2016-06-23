# davetcoleman/moveit_docker:moveit-kinetic-release
# Full debian-based install of MoveIt! using apt-get

FROM osrf/ros:kinetic-desktop
MAINTAINER Dave Coleman dave@dav.ee

RUN apt-get update && \
    apt-get upgrade -y

#TODO RUN apt-get install -y ros-kinetic-moveit-full
RUN apt-get install -y ros-kinetic-moveit-*