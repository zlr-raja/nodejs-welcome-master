#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Build the Docker image
docker build -t nodejs-welcome-app .

# Tag the image with your Docker Hub username
docker tag nodejs-welcome-app $DOCKERHUB_USERNAME/nodejs-welcome-app:latest

# Push the image to Docker Hub
docker push $DOCKERHUB_USERNAME/nodejs-welcome-app:latest

echo "Docker image built and pushed successfully!"