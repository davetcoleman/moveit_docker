# davetcoleman/moveit_docker:moveit-indigo-release
# Full debian-based install of MoveIt! using apt-get

FROM osrf/ros:indigo-desktop
MAINTAINER Dave Coleman dave@dav.ee

RUN apt-get update && \
    apt-get upgrade -y

#TODO RUN apt-get install -y ros-indigo-moveit-full
RUN apt-get install -y ros-indigo-moveit-*