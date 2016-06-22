FROM ros:jade-ros-base
MAINTAINER Dave Coleman dave@dav.ee

ENV CATKIN_WS=/root/ws_moveit

# download moveit source
RUN mkdir -p $CATKIN_WS/src && \
    cd $CATKIN_WS/src && \
    wstool init . && \
    wstool merge https://raw.github.com/ros-planning/moveit_docs/jade-devel/moveit.rosinstall && \
    wstool update

# download deps
RUN apt-get update && \
    rosdep install -y --from-paths . --ignore-src --rosdistro jade

# build repo
#RUN source /ros_entrypoint.sh && \
#    cd $CATKIN_WS
#    catkin build