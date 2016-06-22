FROM ros:jade-ros-base
MAINTAINER Dave Coleman dave@dav.ee

# download moveit source
RUN mkdir -p /root/ws_moveit/src && \
    cd /root/ws_moveit/src && \
    wstool init . && \
    wstool merge https://raw.github.com/ros-planning/moveit_docs/indigo-devel/moveit.rosinstall && \
    wstool update

# download deps
#RUN apt-get update && \
#    rosdep install -y --from-paths . --ignore-src --rosdistro jade

# build repo
#RUN source /ros_entrypoint.sh && \
#    catkin build