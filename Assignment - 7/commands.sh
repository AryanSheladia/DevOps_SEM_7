#!/bin/bash

# ==========================================
# Assignment - 7
# Pipeline with Parameters
# ==========================================

# Jenkins was already running from previous assignments.
# Verify the Jenkins container:
docker ps

# ==========================================
# Jenkins Web Interface Steps
# ==========================================

# Open Jenkins at:
# http://localhost:8080

# Open the existing pipeline:
# Declarative-Pipeline-Demo -> Configure

# Modify the existing Declarative Pipeline by adding
# a parameters block and a Greeting stage.

# Parameter added:
# GREETING_NAME
# Default value: World
# Description: The name to use in the greeting

# Updated Pipeline script:

# pipeline {
#     agent any
#
#     parameters {
#         string(
#             name: 'GREETING_NAME',
#             defaultValue: 'World',
#             description: 'The name to use in the greeting'
#         )
#     }
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
#         stage('Greeting') {
#             steps {
#                 echo "Hello ${params.GREETING_NAME}"
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

# Save the updated Pipeline configuration.

# Verify that the job now shows:
# "Build with Parameters"

# ==========================================
# Parameterized Build
# ==========================================

# Click "Build with Parameters".

# Enter the custom value:
# GREETING_NAME = Aryan

# Click "Build".

# Open the newly created build -> Console Output.

# Verify that the console output contains:
# Hello Aryan

# Verify the final build result:
# Finished: SUCCESS