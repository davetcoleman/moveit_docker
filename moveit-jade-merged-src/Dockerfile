FROM ros:jade-ros-core
MAINTAINER Dave Coleman dave@dav.ee

# download moveit source
RUN mkdir -p ws_moveit/src && \
    cd ws_moveit/src && \
    wstool init . && \
    wstool merge https://raw.githubusercontent.com/davetcoleman/moveit/kinetic-devel/moveit.rosinstall
    wstool update

# download deps
#RUN rosdep install -y --from-paths . --ignore-src --rosdistro jade

# build repo
#RUN catkin build