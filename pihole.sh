#!/bin/bash

# docker network create --subnet 192.168.1.0/24 --gateway 192.168.1.1 reddecasa

docker run -d --init \
-p 53:53/tcp \
-p 53:53/udp \
-p 67:67/udp \
-p 80:80/tcp \
--net=qnet-static-eth0-79e6cc \
--ip=192.168.1.24 \
--restart always \
--name="pihole" \
-v /share/DockerVolumes/pihole/:/etc/pihole \
-e TZ=Europe/Madrid \
-e WEBPASSWORD=admin \
-e PIHOLE_DNS_="127.0.0.1#5335;192.168.1.23" \
cbcrowe/pihole-unbound:latest

# Remove Pihole password
ContainerID=$(docker ps -aqf "name=pihole")
docker exec -it $ContainerID pihole -a -p