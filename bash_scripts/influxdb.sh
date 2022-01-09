#!/bin/bash

docker run -d --init \
-p 8086:8086 \
--network=bridge \
--restart always \
--name="influxdb" \
-v /share/DockerVolumes/influxdb:/var/lib/influxdb \
-e INFLUXDB_DB='cloud' \
-e INFLUXDB_READ_USER='read' \
-e INFLUXDB_READ_USER_PASSWORD='readonly' \
-e INFLUXDB_WRITE_USER='write' \
-e INFLUXDB_WRITE_USER_PASSWORD='readwrite' \
-e INFLUXDB_ADMIN_USER='admin' \
-e INFLUXDB_ADMIN_PASSWORD='admin' \
-e INFLUXDB_HTTP_ENABLED='true' \
-e INFLUXDB_HTTP_HTTPS_ENABLED='false' \
-e INFLUXDB_HTTP_AUTH_ENABLED='true' \
influxdb:1.8