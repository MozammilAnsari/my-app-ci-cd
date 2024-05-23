#!/bin/bash
set -e

echo "Pulling image from docker"

sudo docker pull modassir7488/my-app:latest


# Run the Docker image as a container
echo "Run the docker image"

sudo docker run -d -p 5000:5000 modassir7488/my-app:latest

