#!/bin/bash
mkdir -p $HOME/sustech_points

docker run -it --name=sustech_points -p 8081:8081 -v $HOME/sustech_points:/SUSTechPOINTS/data -e PUID=$UID -e PGID=$GID kevinlad/sustech-points:latest
