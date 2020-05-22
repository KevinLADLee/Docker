FROM kevinlad/roborts-docker-base

ADD roborts_edu_ws /roborts_edu_ws/

WORKDIR /roborts_edu_ws

RUN pwd && ls /roborts_edu_ws/ \
    && wstool init src roborts-melodic-slam-rplidar.rosinstall \ 
    && wstool update -t /roborts_edu_ws/src \
    && /bin/bash build.sh

VOLUME [ "/roborts_edu_ws" ]

ENTRYPOINT ["/ros_entrypoint.sh"]

CMD ["bash"]

