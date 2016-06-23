# davetcoleman/moveit_docker:moveit-kinetic-source
# Downloads the moveit source code and install remaining debian dependencies

FROM osrf/ros:kinetic-desktop
MAINTAINER Dave Coleman dave@dav.ee

ENV CATKIN_WS=/root/ws_moveit

# download moveit source
RUN mkdir -p $CATKIN_WS/src && \
    cd $CATKIN_WS/src && \
    wstool init . && \
    wstool merge https://raw.github.com/ros-planning/moveit_docs/kinetic-devel/moveit.rosinstall && \
    wstool update

# update apt-get because osrf image clears this cache
RUN apt-get update && \
    apt-get upgrade -y

# download deps
RUN cd $CATKIN_WS/src && \
    rosdep install -y --from-paths . --ignore-src --rosdistro kinetic

# install catkin
RUN apt-get install -y python-catkin-tools

# HACK, bad practice
RUN rm /bin/sh \
    && ln -s /bin/bash /bin/sh

# build repo
#RUN source /ros_entrypoint.sh && \
#    cd $CATKIN_WS && \
#    catkin build --no-status