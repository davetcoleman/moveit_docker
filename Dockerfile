FROM ros:jade-ros-core
MAINTAINER @ruffsl @davetcoleman

# HACK, leaving old apt cache around for ros-deb
RUN apt-get update && apt-get install -y \
    build-essential \
    python-catkin-tools \
    sudo
ENV CATKIN_WS=/root/catkin_ws

# HACK, bad practice
RUN rm /bin/sh \
    && ln -s /bin/bash /bin/sh
RUN source /ros_entrypoint.sh \
    && mkdir -p $CATKIN_WS/src \
    && cd $CATKIN_WS/src \
    && git clone https://github.com/davetcoleman/moveit.git
RUN source /ros_entrypoint.sh \
    && cd $CATKIN_WS/src/moveit \
    && rosdep install --verbose -y --from-paths . --ignore-src --rosdistro jade
RUN source /ros_entrypoint.sh \
    && cd $CATKIN_WS \
    && catkin build
RUN sed -i \
    '/source "\/opt\/ros\/$ROS_DISTRO\/setup.bash"/a source "\$CATKIN_WS\/devel\/setup.bash"' \
    /ros_entrypoint.sh