#!/bin/bash

docker run -d --init -p 8081:8080 -p 8443:8443 -p 3478:3478/udp \
--network=bridge \
--restart always \
--name="unifi" \
-v /share/DockerVolumes/unifi:/unifi \
-e TZ=Europe/Madrid \
jacobalberty/unifi:latest