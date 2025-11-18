#!/bin/bash

# Update the package list
echo "Updating package list..."
sudo apt update

# Install Node.js and npm
# echo "Installing Node.js and npm..."
# sudo apt install -y nodejs npm

# Download Hyper Terminal .deb package
echo "Downloading Hyper Terminal..."
wget -qO hyper.deb https://releases.hyper.is/download/deb

# Install Hyper Terminal
echo "Installing Hyper Terminal..."
sudo dpkg -i hyper.deb

# Fix any dependency issues if they exist
echo "Fixing dependencies..."
sudo apt-get install -f

# Clean up
# echo "Cleaning up..."
# rm hyper.deb

# Adding a theme
echo "Updating theme to one dark..."
hyper i hyper-one-dark

# Completion message
echo "Hyper Terminal installation complete! You can start it by typing 'hyper' in the terminal."
