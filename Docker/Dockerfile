FROM osrf/ros:melodic-desktop-full

WORKDIR /root/

ENV NVIDIA_VISIBLE_DEVICES \
    ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
    ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics
ENV DEBIAN_FRONTEND=noninteractive


########################
### INSTALL PACKAGES ###
########################
RUN apt-get update && apt-get install -y \
    sudo \
    vim \
    wget \
    unzip \
    git \
    iputils-ping net-tools \
    python-tk \
    python-pip

#####################
### INSTALL CMAKE ###
#####################
# Reference: https://apt.kitware.com/
RUN git clone https://gitlab.kitware.com/cmake/cmake.git \
	&& cd cmake \
	&& git checkout tags/v3.16.3 \
	&& ./bootstrap --parallel=8 \
	&& make -j8 \
	&& make install \
	&& cd .. \
	&& rm -rf cmake


#####################
### INSTALL FETCH ###
#####################
# RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
# RUN source ~/.bashrc
WORKDIR /root/catkin_ws/src
RUN git clone https://github.com/ZebraDevs/fetch_ros.git
RUN apt-get install ros-melodic-fetch-gazebo-demo -y
RUN apt-get install ros-melodic-fetch-calibration ros-melodic-fetch-open-auto-dock \
        ros-melodic-fetch-navigation ros-melodic-fetch-tools -y

RUN apt-get install python-catkin-tools -y
RUN apt-get install byobu -y
# RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
# RUN echo "cd /root/catkin_ws" >> ~/.bashrc