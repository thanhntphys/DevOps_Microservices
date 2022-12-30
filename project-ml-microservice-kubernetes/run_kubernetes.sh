#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=thanhntphys/uda-microservice-project4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run uda-microservice-project4-latest \
    --image=$dockerpath \
    --port=80 \
    --labels app=uda-microservice-project4-latest

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward uda-microservice-project4-latest 8000:80