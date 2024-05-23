#!/bin/bash
set -e

# Get the login command from ECR and execute it directly
echo "Logging in to ECR"
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 381492249871.dkr.ecr.us-east-1.amazonaws.com
# Pull the Docker image from Docker Hub
echo "Pulling image from ecr"

docker pull 381492249871.dkr.ecr.us-east-1.amazonaws.com/my-app:latest


# Run the Docker image as a container
echo "Run the docker image"

docker run -d -p 5000:5000 381492249871.dkr.ecr.us-east-1.amazonaws.com/my-app:latest

