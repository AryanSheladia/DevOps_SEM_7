#!/usr/bin/env bash
# Assignment - 14: CI/CD — Jenkins Pipeline Building a Docker Image
# Commands are documented by execution context. Run host commands in the
# machine running Docker; run the apt/docker CLI commands inside the Jenkins
# container as root. The Jenkins pipeline itself is configured in Jenkins UI.

# ---------------------------------------------------------------------------
# 1. Host machine: recreate Jenkins with persistent home and Docker socket
#    (Only run docker rm if the old container exists and you intend to replace it.)
# ---------------------------------------------------------------------------
docker stop myjenkins
docker rm myjenkins

docker run -d --name myjenkins \
  -p 8080:8080 \
  -p 50000:50000 \
  -v jenkins_home:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jenkins/jenkins:lts-jdk17

# ---------------------------------------------------------------------------
# 2. Enter Jenkins container as root and install Docker CLI
# ---------------------------------------------------------------------------
docker exec -it -u root myjenkins bash

# Run the following commands inside the Jenkins container:
apt-get update
apt-get install -y docker.io
docker --version
docker ps
exit

# ---------------------------------------------------------------------------
# 3. Host machine: allow the Jenkins user to access the Docker socket
# ---------------------------------------------------------------------------
docker exec -u root myjenkins usermod -aG root jenkins
docker restart myjenkins

# Verify Docker access from the Jenkins container:
docker exec myjenkins docker ps

# ---------------------------------------------------------------------------
# 4. Jenkins Pipeline configuration
#    In the Jenkins pipeline, add a stage that builds the image from
#    Assignment - 8. Example stage:
#
#    stage('Build Docker Image') {
#        steps {
#            dir('Assignment - 8') {
#                sh 'docker build -t my-flask-app:${BUILD_NUMBER} .'
#            }
#        }
#    }
#
#    Run the pipeline in Jenkins and verify the successful build in the
#    Console Output. The image tag uses the Jenkins build number.
# ---------------------------------------------------------------------------

# Optional host-side verification of the generated image:
docker images
