#!/bin/bash
set -e

# Define variables
AWS_REGION="us-east-1"
ECR_REGISTRY="3381492249871.dkr.ecr.us-east-1.amazonaws.com"
ECR_REPOSITORY="my-app"
IMAGE_TAG="latest"

# Get the login command from ECR and execute it directly
echo "Logging in to ECR"
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 381492249871.dkr.ecr.us-east-1.amazonaws.com

# Pull the Docker image from ECR
echo "Pulling image from ECR"
docker pull $ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG

# Run the Docker image as a container
echo "Running the Docker image"
docker run -d -p 5000:5000 $ECR_REGISTRY/$ECR_REPOSITORY:$IMAGE_TAG

