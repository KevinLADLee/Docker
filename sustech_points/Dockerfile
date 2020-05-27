FROM tensorflow/tensorflow:2.1.1

ENV PUID=1000
ENV PGID=1000

RUN apt-get update && apt-get install -y wget git && rm -rf /var/lib/apt/lists/* && \
    git clone https://github.com/naurril/SUSTechPOINTS --depth=1 && \
    pip3 install -r /SUSTechPOINTS/requirement.txt -i https://pypi.tuna.tsinghua.edu.cn/simple && \
    mv /SUSTechPOINTS/data/example /SUSTechPOINTS && \
    wget https://github.com/naurril/SUSTechPOINTS/releases/download/0.1/deep_annotation_inference.h5 -P /SUSTechPOINTS/algos/models

ADD entrypoint.sh /SUSTechPOINTS 

RUN chown -R $PUID:$PGID /SUSTechPOINTS && groupadd -g $PGID mygroup && useradd -m myuser -u $PUID -s /bin/bash

USER myuser:mygroup

VOLUME /SUSTechPOINTS/data

WORKDIR /SUSTechPOINTS

ENTRYPOINT [ "/SUSTechPOINTS/entrypoint.sh" ]            