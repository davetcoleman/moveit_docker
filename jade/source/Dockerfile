# davetcoleman/moveit_docker:moveit-jade-source
# Downloads the moveit source code and install remaining debian dependencies

FROM davetcoleman/moveit_docker:jade-base
MAINTAINER Dave Coleman dave@dav.ee

ENV CATKIN_WS=/root/ws_moveit

# download moveit source
RUN mkdir -p $CATKIN_WS/src && \
    cd $CATKIN_WS/src && \
    wstool init . && \
    wstool merge https://raw.github.com/ros-planning/moveit_docs/jade-devel/moveit.rosinstall && \
    wstool update

# download deps
RUN cd $CATKIN_WS/src && \
    rosdep install -y --from-paths . --ignore-src --rosdistro jade