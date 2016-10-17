#!/bin/sh

docker stop redis-server && docker rm redis-server
docker run --name redis-server -p 16379:6379 -v $PWD/data:/data -d saidie/redis \
       /usr/local/bin/redis-server /data/redis.conf
