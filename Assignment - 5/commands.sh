#!/bin/bash

# ==========================================
# Assignment - 5 (Task 3.2)
# Jenkins Freestyle Project
# ==========================================

# Check existing Docker containers
docker ps -a

# Start Jenkins LTS container
docker run -d -p 8080:8080 -p 50000:50000 \
-v jenkins_home:/var/jenkins_home \
--name myjenkins \
jenkins/jenkins:lts-jdk17

# Verify Jenkins container is running
docker ps

# Retrieve Jenkins initial administrator password
docker exec myjenkins cat /var/jenkins_home/secrets/initialAdminPassword

# ==========================================
# Jenkins Web Interface Steps
# ==========================================

# Open Jenkins at:
# http://localhost:8080

# Unlock Jenkins using the initial administrator password.
# Install suggested plugins.
# Create the first administrator user.
# Complete the Jenkins setup.

# Verify Git plugin:
# Manage Jenkins -> Plugins -> Installed plugins
# Search for "Git"

# Create Freestyle project:
# New Item -> Git-Practice-Build -> Freestyle project

# Configure Source Code Management:
# Select Git
# Repository URL:
# https://github.com/AryanSheladia/DevOps_SEM_7.git
# Branch Specifier:
# */main

# Add Build Step:
# Execute shell

# Build shell commands:
echo " "
echo "BUILDING: ${JOB_NAME}, BUILD #${BUILD_NUMBER}"
echo "Workspace: ${WORKSPACE}"
echo " "
echo "Listing files checked out from Git:"
ls -la
echo " "
echo "Build completed successfully!"

# ==========================================
# Jenkins Build
# ==========================================

# Save the project configuration.
# Click "Build Now".
# Open Build #1 -> Console Output.
# Verify workspace contents and:
# Finished: SUCCESS