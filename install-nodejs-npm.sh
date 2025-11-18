#!/bin/bash

# Update the package list
echo "Updating package list..."
sudo apt update

# Install Node.js and npm
echo "Installing Node.js and npm..."
sudo apt install -y nodejs npm

# Verify installations
if command -v node &> /dev/null && command -v npm &> /dev/null; then
    echo "Node.js and npm installation completed successfully!"
    node -v
    npm -v
else
    echo "Error: Node.js and/or npm installation failed."
    exit 1
fi

# Optionally install npx
# echo "Installing npx (Node Package Runner)..."
# sudo npm install -g npx

# echo "npx installation completed."
