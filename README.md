# MoveIt! Docker Images
This repo hosts the Dockerfiles used to generate images for [MoveIt!](moveit.ros.org) :whale:

[![Docker Pulls](https://img.shields.io/docker/pulls/davetcoleman/moveit_docker.svg?maxAge=2592000)](https://hub.docker.com/r/davetcoleman/moveit_docker/)
[![Docker Stars](https://img.shields.io/docker/stars/davetcoleman/moveit_docker.svg)](https://registry.hub.docker.com/davetcoleman/moveit_docker/)

## Usage

    docker run -it davetcoleman/moveit_docker:moveit-jade-source

## Build

    cd jade/source
    docker build -t davetcoleman/moveit_docker:moveit-jade-source .

## Available Images

For each ROS distribution there are 2 images, built on top of a standard [osrf/ros:jade-desktop](https://github.com/osrf/docker_images/blob/master/ros/jade/jade-desktop/Dockerfile) image:

 - **source image**: contains all dependencies and a full MoveIt! workspace downloaded and built to ~/ws_moveit/src
 - **release image**: the full debian-based install of MoveIt! using apt-get

### Standard Images

 - [moveit-indigo-source](https://github.com/davetcoleman/moveit_docker/blob/master/indigo/source/Dockerfile)
 - [moveit-indigo-release](https://github.com/davetcoleman/moveit_docker/blob/master/indigo/release/Dockerfile)
 - [moveit-jade-source](https://github.com/davetcoleman/moveit_docker/blob/master/jade/source/Dockerfile)
 - [moveit-jade-release](https://github.com/davetcoleman/moveit_docker/blob/master/jade/release/Dockerfile)
 - [moveit-kinetic-source](https://github.com/davetcoleman/moveit_docker/blob/master/kinetic/source/Dockerfile)
 - [moveit-kinetic-release](https://github.com/davetcoleman/moveit_docker/blob/master/jade/release/Dockerfile)

### Experimental Images

 - [moveit-kinetic-merged](https://github.com/davetcoleman/moveit_docker/blob/master/kinetic/source/Dockerfile): builds MoveIt! Kinetic from source using the [experimental merged repos repository](https://github.com/davetcoleman/moveit)
