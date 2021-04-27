#!/bin/bash -x

sudo apt update
sudo apt upgrade -y
pushd /srv/dev-disk-by-uuid-5d345ba7-5cd8-46f5-a1a5-8835ab885c5d/docker/
docker-compose pull
docker-compose up -d
docker image prune -f
popd
