# MoveIt! Docker Images
This repo hosts the Dockerfiles used to generate images for [MoveIt!](moveit.ros.org) :whale:

[![Docker Pulls](https://img.shields.io/docker/pulls/moveit/moveit_docker.svg?maxAge=2592000)](https://hub.docker.com/r/moveit/moveit_docker/)
[![Docker Stars](https://img.shields.io/docker/stars/moveit/moveit_docker.svg)](https://registry.hub.docker.com/moveit/moveit_docker/)

## Usage

For a built-by-source image of MoveIt:

    docker run -it moveit/moveit_docker:moveit-kinetic-source

For a debian-installed image of MoveIt:

    docker run -it moveit/moveit_docker:moveit-kinetic-release

Any of the three current distros work: [indigo|jade|kinetic]

### Using GUI's with Docker

For more details see the [ROS tutorial](http://wiki.ros.org/docker/Tutorials/GUI) on this.

    # This is not the safest way however, as you then compromise the access control to X server on your host
    xhost +local:root # for the lazy and reckless

    docker run -it --env="DISPLAY" --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" moveit/moveit_docker:moveit-kinetic-source
    export containerId=$(docker ps -l -q)

    # Close security hole:
    xhost -local:root


## Build

    cd kinetic/source
    docker build -t moveit/moveit_docker:moveit-kinetic-source .

## Available Images

For each ROS distribution there are 3 images, built on top of a standard [osrf/ros:kinetic-desktop](https://github.com/osrf/docker_images/blob/master/ros/kinetic/kinetic-desktop/Dockerfile) (or other distro version) image:

 - **source image**: contains all dependencies and a full MoveIt! workspace downloaded and built to ~/ws_moveit/src
 - **release image**: the full debian-based install of MoveIt! using apt-get
 - **ci image**: an image optimized for running continuous integration with Travis and [moveit_ci](https://github.com/ros-planning/moveit_ci)

### Standard Images

 - [moveit-indigo-source](https://github.com/moveit/moveit_docker/blob/master/indigo/source/Dockerfile)
 - [moveit-indigo-release](https://github.com/moveit/moveit_docker/blob/master/indigo/release/Dockerfile)
 - [moveit-jade-source](https://github.com/moveit/moveit_docker/blob/master/jade/source/Dockerfile)
 - [moveit-jade-release](https://github.com/moveit/moveit_docker/blob/master/jade/release/Dockerfile)
 - [moveit-kinetic-source](https://github.com/moveit/moveit_docker/blob/master/kinetic/source/Dockerfile)
 - [moveit-kinetic-release](https://github.com/moveit/moveit_docker/blob/master/jade/release/Dockerfile)
