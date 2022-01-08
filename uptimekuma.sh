#!/bin/bash

docker run -d -p 3001:3001 --network=bridge \
--restart always \
--name="uptime-kuma" \
-v /share/DockerVolumes/uptime:/app/data \
louislam/uptime-kuma:latest