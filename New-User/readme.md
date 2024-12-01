# Enhanced Git Setup Script

A beginner-friendly batch script to help students and new GitHub users set up their first repository and start working with Git.

## 🚀 What This Script Does

This script automates the process of:
- Checking Git installation
- Setting up Git configuration
- Creating a new repository
- Setting up .gitignore
- Making your first commit
- Connecting to GitHub
- Pushing your code to GitHub

## 📋 Prerequisites

Before running this script, you need to:

1. Create a GitHub account at [GitHub.com](https://github.com)
2. Download and install Git from [git-scm.com/downloads](https://git-scm.com/downloads)
3. Create a new empty repository on GitHub:
   - Go to GitHub.com
   - Click the '+' icon in the top right
   - Select 'New repository'
   - Give it a name
   - Don't initialize with README
   - Copy the repository URL

## 🔧 How to Use

1. Download the `Setup-Git.bat` file
2. Place it in the folder you want to make into a Git repository
3. Double-click to run the script
4. Follow the prompts:
   - Enter your name when asked
   - Enter your email when asked
   - Paste your GitHub repository URL when asked

## 💡 First-Time Setup Guide

If this is your first time using Git:

1. **Installing Git**:
   - Download Git installer from [git-scm.com/downloads](https://git-scm.com/downloads)
   - Run the installer
   - Use default settings during installation

2. **Setting Up GitHub Authentication**:
   - Go to GitHub.com → Settings
   - Click "Developer settings" (bottom left)
   - Click "Personal access tokens" → "Tokens (classic)"
   - Generate new token
   - Give it a name and select "repo" permissions
   - Copy and save the token somewhere safe
   - Use this token as your password when the script asks for authentication

## 🔍 Common Issues and Solutions

1. **"Git is not installed!"**
   - Solution: Download and install Git from the link provided

2. **"GitHub authentication failed!"**
   - Check if your repository URL is correct
   - Make sure you're using your GitHub username
   - Use your personal access token as the password

3. **"Remote origin already exists"**
   - This folder is already a Git repository
   - Create a new folder and try again

## 📝 Important Notes

- Don't share your personal access token with anyone
- Make sure to save important files before running the script
- The script creates a basic .gitignore file
- You can modify the README.md after the script runs

## 🆘 Need Help?

If you encounter any issues:
1. Read the error message carefully
2. Check the Common Issues section above
3. Ask your instructor for help
4. Visit [GitHub's help pages](https://docs.github.com/en)

## 🔄 Updates and Modifications

Feel free to modify the script for your needs:
- Edit the .gitignore patterns
- Change the README template
- Add more error checks

Happy coding! 🎉