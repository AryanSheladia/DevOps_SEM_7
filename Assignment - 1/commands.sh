#!/bin/bash

# ==========================================
# Assignment - 1 (TW1 - Task 1.1)
# Git Repository Setup
# ==========================================

# Check repository status
git status

# Stage project files
git add .

# Verify staged files
git status

# Create initial commit
git commit -m "Initial commit"

# Rename default branch to main (if required)
git branch -M main

# Add remote repository
git remote add origin https://github.com/AryanSheladia/DevOps_SEM_7.git

# Push project to GitHub
git push -u origin main
