#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path

dockerpath="elbehairy/amr:latest"

# Step 2
# Run the Docker Hub container with kubernetes


microk8s.kubectl run amr --image=$dockerpath --port=80



# Step 3:

# List kubernetes pods

microk8s.kubectl  get pods

# Step 4:
# Forward the container port to a host

microk8s.kubectl  port-forward amr  8000:80

