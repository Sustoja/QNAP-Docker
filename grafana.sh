#!/bin/bash

docker run -d --init \
-p 3000:3000 \
--user="0" \
--network=bridge \
--restart always \
--name="grafana" \
-v /share/DockerVolumes/grafana/:/var/lib/grafana \
-e GF_SECURITY_ADMIN_PASSWORD='admin' \
grafana/grafana-oss:latest
