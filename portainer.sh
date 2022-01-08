#!/bin/bash

docker run -d -p 9000:9000 -p 9001:9001 --network=bridge \
--restart always \
--name="portainer" \
-v /var/run/docker.sock:/var/run/docker.sock \
-v /share/DockerVolumes/portainer:/data \
portainer/portainer-ce:latest