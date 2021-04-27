#!/bin/bash
# sh /srv/dev-disk-by-uuid-5d345ba7-5cd8-46f5-a1a5-8835ab885c5d/storage2tb/Scripts/update.sh
set -x

cd ~
sudo apt update
sudo apt upgrade -y
cd /srv/dev-disk-by-uuid-5d345ba7-5cd8-46f5-a1a5-8835ab885c5d/docker/
docker-compose pull
docker-compose up -d
docker image prune -f
