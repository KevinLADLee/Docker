FROM kevinlad/ros:melodic-ros-base

RUN apt-get update && \
    apt-get install --no-install-recommends -q -y             \ 
                         wget                                 \
                         curl                                 \                      
                         python-catkin-tools                  \             
                         ros-melodic-rosconsole               \
                         ros-melodic-catkin                   \
                         ros-melodic-interactive-markers      \
                         ros-melodic-pcl-conversions          \
                         libprotobuf-dev                      \
                         protobuf-compiler                    \
                         libprotoc-dev                        \
                         ros-melodic-pcl-ros                  \
                         ros-melodic-nav-msgs                 \
                         ros-melodic-laser-geometry           \
                         ros-melodic-roscpp                   \
                         libceres-dev                         \
                         ros-melodic-actionlib                \
                         ros-melodic-visualization-msgs       \
                         ros-melodic-tf                       \
                         libgoogle-glog-dev                   \
                         ros-melodic-map-server               \
                         ros-melodic-message-filters          \
                         ros-melodic-sensor-msgs              \
                         ros-melodic-message-runtime          \
                         ros-melodic-std-msgs                 \
                         ros-melodic-message-generation       \
                         ros-melodic-rospy                    \
                         ros-melodic-libg2o                   \
                         ros-melodic-std-srvs                 \
                         ros-melodic-geometry-msgs         && \        
    rm -rf /var/lib/apt/lists/*
    
ADD roborts_edu_ws /roborts_edu_ws/
WORKDIR /roborts_edu_ws

RUN wstool init src roborts-melodic-slam-rplidar.rosinstall && \ 
    wstool update -t /roborts_edu_ws/src && \ 
    /bin/bash build.sh

VOLUME [ "/roborts_edu_ws" ]

ENTRYPOINT ["/init"]
CMD ["bash"]

