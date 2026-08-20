#!/bin/bash

# Assignment 9: Container Management & Networking

echo "========================================"
echo "Assignment 9 - Container Management & Networking"
echo "========================================"

# Step 1: Run the Flask container in detached mode
echo ""
echo "Step 1: Starting Flask container..."
docker run -d -p 5001:5000 --name my-flask-container my-flask-app

# Step 2: List running containers
echo ""
echo "Step 2: Checking running containers..."
docker ps

# Step 3: Access the application
echo ""
echo "Step 3: Application available at:"
echo "http://localhost:5001"

# Step 4: Stop the container
echo ""
echo "Step 4: Stopping container..."
docker stop my-flask-container

# Step 5: Check all containers
echo ""
echo "Step 5: Checking all containers..."
docker ps -a

# Step 6: Inspect container network settings
echo ""
echo "Step 6: Inspecting container network settings..."
docker inspect my-flask-container

# Step 7: Remove the stopped container
echo ""
echo "Step 7: Removing container..."
docker rm my-flask-container

# Step 8: Verify removal
echo ""
echo "Step 8: Final container check..."
docker ps -a

echo ""
echo "========================================"
echo "Assignment 9 completed successfully!"
echo "========================================"