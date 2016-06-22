[1;33mdiff --git a/moveit-jade-merged-src/Dockerfile b/moveit-jade-merged-src/Dockerfile[m
[1;33mdeleted file mode 100644[m
[1;33mindex 8d60290..0000000[m
[1;33m--- a/moveit-jade-merged-src/Dockerfile[m
[1;33m+++ /dev/null[m
[1;35m@@ -1,15 +0,0 @@[m
[1;31m-FROM ros:jade-ros-core[m
[1;31m-MAINTAINER Dave Coleman dave@dav.ee[m
[1;31m-[m
[1;31m-# download moveit source[m
[1;31m-RUN mkdir -p ws_moveit/src && \[m
[1;31m-    cd ws_moveit/src && \[m
[1;31m-    wstool init . && \[m
[1;31m-    wstool merge https://raw.githubusercontent.com/davetcoleman/moveit/kinetic-devel/moveit.rosinstall[m
[1;31m-    wstool update[m
[1;31m-[m
[1;31m-# download deps[m
[1;31m-#RUN rosdep install -y --from-paths . --ignore-src --rosdistro jade[m
[1;31m-[m
[1;31m-# build repo[m
[1;31m-#RUN catkin build[m
\ No newline at end of file[m
