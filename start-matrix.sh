#!/bin/bash

docker run -d -p 8448:8448 -p 3478:3478 --expose 8048 --name=synapse --network=chat_nw -v /root/working/matrix-docker/volumes/data:/data registry.gitlab.com/team-vince-jeff/matrix-docker/mindless-matrix:beta start
