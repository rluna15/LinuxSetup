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

# Install Visual Studio Code using Snap
echo "Installing Neovim via Snap..."
sudo snap install nvim --classic

echo "Neovim installation complete!"
