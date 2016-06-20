FROM ros:kinetic-ros-core
MAINTAINER Dave Coleman dave@dav.ee

# download moveit source
RUN mkdir -p ws_moveit/src && \
    cd ws_moveit/src && \
    git clone https://github.com/davetcoleman/moveit.git
