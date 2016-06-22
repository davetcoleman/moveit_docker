# davetcoleman/moveit_docker:moveit-jade-build
# Builds the moveit source code

FROM davetcoleman/moveit_docker:moveit-jade-source
MAINTAINER Dave Coleman dave@dav.ee

ENV CATKIN_WS=/root/ws_moveit

# build repo
RUN source /ros_entrypoint.sh && \
    cd $CATKIN_WS
    catkin build