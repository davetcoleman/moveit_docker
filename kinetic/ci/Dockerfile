# moveit/moveit_docker:moveit-kinetic-ci
# Sets up a base image to use for running Continuous Integration on Travis

FROM osrf/ros:kinetic-desktop
MAINTAINER Dave Coleman dave@dav.ee

# Install packages
RUN apt-get -qq update &&\
    apt-get -qq install -y \
        git \
        sudo \
        wget \
        lsb-release \
        freeglut3-dev \
        libglew-dev \
        python-pip \
        python-catkin-tools \
        python-rosdep \
        python-wstool \
        python-pyassimp \
        ros-$ROS_DISTRO-rosbash \
        ros-$ROS_DISTRO-rospack && \
    rm -rf /var/lib/apt/lists/*
ENV IN_DOCKER 1
ENV TERM xterm
