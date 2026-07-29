#!/bin/bash

# ============================================
# Assignment 1 - Git Workflow
# Task 1.1
# Initialize a Git repository for a Flask
# Hello World application and push it to GitHub.
# ============================================

# Create project directory
mkdir hello-flask-devops
cd hello-flask-devops

# Initialize Git repository
git init

# Check repository status
git status

# Stage project files
git add .

# Rename default branch to main
git branch -M main

# Commit the project
git commit -m "Initial Flask application"

# Connect local repository to GitHub
git remote add origin https://github.com/AryanSheladia/hello-flask-devops.git

# Verify remote repository
git remote -v

# Push project to GitHub
git push -u origin main
