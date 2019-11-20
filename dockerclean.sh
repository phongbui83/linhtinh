#!/bin/bash
echo "Stop All Containers"
docker ps -a | awk '{if (NR>1) {print'$1'}}' | xargs docker stop
echo "Delete All Containers"
docker ps -a | awk '{if (NR>1) {print'$1'}}' | xargs docker rm
echo "Delete All Images"
docker images | awk '{if (NR>1) {print'$3'}}' | xargs docker rmi
echo "Prune System, Volumes, Network"
echo "y" | docker system prune
echo "y" | docker volumes prune
echo "y" | docker network prune
