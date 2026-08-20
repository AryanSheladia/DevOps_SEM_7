#!/bin/bash

# ==========================================
# Assignment - 8
# Dockerfile & Image Build
# ==========================================

# Build the Docker image
docker build -t my-flask-app .

# Verify the created image
docker images my-flask-app

# Run the Flask container
docker run -d -p 5000:5000 \
    --name my-flask-container \
    my-flask-app

# Verify the running container
docker ps

# Application URL:
# http://localhost:5000

# Expected output:
# Hello, Docker!