FROM ros:melodic-ros-base-bionic

RUN apt-get update && apt-get install -y wget python-catkin-tools \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /roborts/roborts_edu_ws/src

WORKDIR /roborts/roborts_edu_ws

RUN wget -c https://raw.githubusercontent.com/Artinx-Robotics/Common/master/roborts-melodic-slam-rplidar.rosinstall \
    && wstool init src roborts-melodic-slam-rplidar.rosinstall \ 
    && wstool update -t src

RUN apt-get update &&             \
    rosdep update &&              \
    rosdep install 		  \
	--from-paths src          \ 
	--ignore-src              \
	--rosdistro=melodic -y && \ 
    apt-get autoremove         && \
    rm -rf /var/lib/apt/lists/*

ADD build.sh /roborts/roborts_edu_ws

RUN /bin/bash build.sh

ENTRYPOINT ["/ros_entrypoint.sh"]

CMD ["bash"]

