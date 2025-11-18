#!/bin/bash

# Update the package list
echo "Updating package list..."
sudo apt update

# Install required packages
echo "Installing required packages..."
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
echo "Adding Docker's official GPG key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository
echo "Adding the Docker repository..."
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update the package list again
echo "Updating package list again..."
sudo apt update

# Install Docker
echo "Installing Docker..."
sudo apt install -y docker-ce

# Verify Docker installation
if command -v docker &> /dev/null; then
    echo "Docker installation completed successfully!"
    docker --version
else
    echo "Error: Docker installation failed."
    exit 1
fi

# Prompt for the username to add to the Docker group
read -p "Enter the username to add to the Docker group: " docker_user

# Add the specified user to the docker group
if id "$docker_user" &>/dev/null; then
    echo "Adding $docker_user to the Docker group..."
    sudo usermod -aG docker "$docker_user"
    echo "$docker_user has been added to the Docker group."
else
    echo "Error: User '$docker_user' does not exist."
    exit 1
fi

echo "You may need to log out and log back in for the Docker group changes to take effect."
