#!/bin/bash

# ==========================================
# Assignment - 6
# Task 3.3 - Basic Declarative Pipeline
# ==========================================

# Jenkins was already running from Assignment - 5.
# Verify the Jenkins container is running:
docker ps

# ==========================================
# Jenkins Web Interface Steps
# ==========================================

# Open Jenkins at:
# http://localhost:8080

# Create a new Jenkins item:
# New Item -> Declarative-Pipeline-Demo -> Pipeline -> OK

# Configure Pipeline:
# Definition -> Pipeline script

# Declarative Pipeline script used:

# pipeline {
#     agent any
#
#     stages {
#
#         stage('Checkout Source Code') {
#             steps {
#                 git url: 'https://github.com/AryanSheladia/DevOps_SEM_7.git',
#                     branch: 'main'
#
#                 echo 'Git checkout completed.'
#             }
#         }
#
#         stage('Run Example Command') {
#             steps {
#                 sh 'echo "Executing a shell command..."'
#                 sh 'echo "Hello from Declarative Pipeline!"'
#                 sh 'echo "--- Reading README ---"'
#                 sh 'cat README.md'
#             }
#         }
#     }
# }

# Save the Pipeline configuration.

# ==========================================
# Jenkins Build
# ==========================================

# Click "Build Now".

# Open Build #1.
# Verify that both pipeline stages are successful.

# Open "Console Output".
# Verify Git checkout and shell command execution.

# Final expected result:
# Finished: SUCCESS