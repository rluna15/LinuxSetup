#!/bin/bash

# update package list
echo "Updating package list..."
sudo apt update

# install podman
sudo apt install podman

echo "Podman has been installed"