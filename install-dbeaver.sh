#!/bin/bash

# Update the package list
sudo apt update

# Install required dependencies
sudo apt install -y software-properties-common

# Add the DBeaver repository
sudo add-apt-repository -y ppa:serge-rider/dbeaver-ce

# Update the package list again after adding the repository
sudo apt update

# Install DBeaver
sudo apt install -y dbeaver-ce

# Notify the user
echo "DBeaver has been installed successfully!"
