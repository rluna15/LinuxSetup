#!/bin/bash

# Update the package list
echo "Updating package list..."
sudo apt update

# Check if snap is installed, if not, install it
if ! command -v snap &> /dev/null; then
    echo "Snap is not installed. Installing Snap..."
    sudo apt install -y snapd
else
    echo "Snap is already installed."
fi

# Update the package list again after adding the PPA
echo "Updating package list again..."
sudo apt update

# Install Ghostty
echo "Installing Ghostty..."
sudo snap install ghostty --classic

# Set Ghostty as the default terminal
# echo "Setting Ghostty as the default terminal..."
# gsettings set org.gnome.desktop.default-applications.terminal exec 'ghostty'
# gsettings set org.gnome.desktop.default-applications.terminal exec-arg ''

# echo "Ghostty installation complete and set as the default terminal!"
