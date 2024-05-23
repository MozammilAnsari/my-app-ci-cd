#!/bin/bash
set -e

# Stop and remove running containers (if any)
echo "Stopping and removing containers"

# Get container IDs of all running containers
containerIds=$(sudo docker ps -q)

if [ -z "$containerIds" ]; then
  echo "No running containers found"
else
  for containerId in $containerIds; 
  do
    echo "Stopping container $containerId"
    sudo docker stop $containerId
    
    echo "Removing container $containerId"
    sudo docker rm $containerId
  done
fi

