# davetcoleman/moveit_docker:moveit-kinetic-merged
# Builds MoveIt! Kinetic from source using the experimental merged repos repository from https://github.com/davetcoleman/moveit

FROM osrf/ros:kinetic-desktop
MAINTAINER Dave Coleman dave@dav.ee

ENV CATKIN_WS=/root/ws_moveit
RUN mkdir -p $CATKIN_WS/src
WORKDIR $CATKIN_WS/src

# download moveit source
RUN wstool init . && \
    wstool merge https://raw.githubusercontent.com/davetcoleman/moveit/${ROS_DISTRO}-devel/moveit.rosinstall && \
    wstool update

# TODO there are missing dependencies
# update apt-get because osrf image clears this cache and download deps
RUN apt-get update && \
    apt-get install -y \
        python-catkin-tools \
        less && \
    rm -rf /var/lib/apt/lists/*
#    rosdep install -y --from-paths . --ignore-src --rosdistro ${ROS_DISTRO} && \

# HACK, replacing shell with bash for later docker build commands
#RUN mv /bin/sh /bin/sh-old && \
#    ln -s /bin/bash /bin/sh

# build repo
#WORKDIR $CATKIN_WS
#RUN source /ros_entrypoint.sh && \
#    catkin build --no-status
