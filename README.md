# MoveIt! Docker Images
This repo hosts the :whale: Dockerfiles used to generate images for [MoveIt!](moveit.ros.org):

[MoveIt ![Docker Pulls](https://img.shields.io/docker/pulls/_/moveit.svg) ![Docker Stars](https://img.shields.io/docker/stars/_/moveit.svg)](https://registry.hub.docker.com/_/moveit/)
[![Compare Images](https://badge.imagelayers.io/moveit:latest.svg)](https://imagelayers.io/?images=moveit:indigo-moveit-core)

## Usage

    docker run -it davetcoleman/moveit-jade-src

## Build

    docker build -t davetcoleman/moveit_docker:moveit-jade-source ./Dockerfile

## Layout

For each distribution there are 3 images, built on top of a standard OSRF image:

 - [osrf/ros:jade-desktop](https://github.com/osrf/docker_images/blob/e4ba7284358c569ebb7818b85e8520fbe9157269/ros/jade/jade-desktop/Dockerfile) ROS Jade Desktop
 - [moveit-jade-source](): contains all installed debian dependencies and all MoveIt! source code downloaded to ~/ws_moveit/src
 - [moveit-jade-build](): built on top of moveit-jade-source, contains a ``catkin build`` version of the same workspace
 - [moveit-jade-release](): the full debian-based install of MoveIt! using apt-get
