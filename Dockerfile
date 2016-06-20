FROM ros:jade-ros-core
MAINTAINER Dave Coleman dave@dav.ee

# download moveit source
RUN mkdir -p ws_moveit/src && \
    cd ws_moveit/src && \
    git clone https://github.com/davetcoleman/moveit.git
# download deps
RUN rosdep install -y --from-paths . --ignore-src --rosdistro jade
# build repo
RUN catkin build