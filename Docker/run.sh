#!/bin/bash
xhost +local:root

docker run --gpus all --rm -it --net host --ipc host --privileged\
    -v /home/nagata/sources/fetch/src/fetch_ros:/root/catkin_ws/src/fetch_ros\
    -v /home/nagata/sources/fetch/src/fetch_test/:/root/catkin_ws/src/fetch_test\
    -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY \
    fetch:melodic bash