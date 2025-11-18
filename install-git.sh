#!/bin/bash

# Update the package list
echo "Updating package list..."
sudo apt update

# Install Git
echo "Installing Git..."
sudo apt install -y git

# Verify the installation
if command -v git &> /dev/null; then
    echo "Git installation completed successfully!"
    git --version
else
    echo "Error: Git installation failed."
    exit 1
fi

# Prompt for user name and email
read -p "Enter your name for Git: " git_name
read -p "Enter your email for Git: " git_email

# Configure Git with the provided name and email
git config --global user.name "$git_name"
git config --global user.email "$git_email"

# Verify Git configuration
echo "Git configuration set:"
git config --global --list
