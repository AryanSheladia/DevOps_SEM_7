#!/bin/bash

# ==========================================
# Assignment - 2 (TW1 - Task 1.2)
# Git Workflow & Collaboration
# ==========================================

# Check current branch
git branch

# Create and switch to feature branch
git checkout -b feature/user-auth

# Verify modified files
git status

# Stage changes
git add .

# Verify staged files
git status

# Commit changes
git commit -m "Added user authentication feature"

# Push feature branch to remote repository
git push -u origin feature/user-auth