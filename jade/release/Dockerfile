# davetcoleman/moveit_docker:moveit-jade-release
# Full debian-based install of MoveIt! using apt-get

FROM osrf/ros:jade-desktop
MAINTAINER Dave Coleman dave@dav.ee

RUN apt-get update && \
    apt-get upgrade -y

#TODO RUN apt-get install -y ros-jade-moveit-full
RUN apt-get install -y ros-jade-moveit-*