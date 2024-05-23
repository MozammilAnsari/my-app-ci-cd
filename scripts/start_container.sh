#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
echo "Pulling image from ecr"

docker pull 381492249871.dkr.ecr.us-east-1.amazonaws.com/my-app:latest


# Run the Docker image as a container
echo "Run the docker image"

docker run -d -p 5000:5000 381492249871.dkr.ecr.us-east-1.amazonaws.com/my-app:latest

