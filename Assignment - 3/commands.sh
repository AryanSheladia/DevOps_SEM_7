#!/bin/bash

# ==========================================
# Assignment - 3 (TW1 - Task 1.3)
# Merge Conflict Resolution
# ==========================================

# Switch to main branch
git checkout main

# Check current branch
git branch

# Verify repository status
git status

# Stage modified file
git add .

# Commit changes on main branch
git commit -m "Updated app on main branch"

# Merge feature branch into main
git merge feature/user-auth

# ------------------------------------------
# Resolve merge conflict manually in:
# Assignment - 2/app.py
# ------------------------------------------

# Stage resolved files
git add .

# Complete the merge
git commit -m "Resolved merge conflict between main and feature/user-auth"

# Push merged changes to remote repository
git push origin main

# Verify repository status
git status