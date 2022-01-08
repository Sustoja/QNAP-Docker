#!/bin/bash

docker run -d \
  --name="homer" \
  -p 8082:8080 \
  -v /share/DockerVolumes/homer/assets/:/www/assets \
  --restart=always \
  b4bz/homer:latest