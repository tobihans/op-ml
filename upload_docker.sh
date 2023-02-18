#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=tobisanh/op-ml

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

docker tag op-ml $dockerpath
docker push $dockerpath
