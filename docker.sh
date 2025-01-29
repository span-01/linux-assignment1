#!/bin/bash

echo "Updating package list."
sudo apt update -y


echo "Installing Docker."
sudo apt install -y docker.io

echo "Checking Docker version."
docker --version

if [ $? -eq 0 ]; then
    echo "Docker installed successfully."
else
    echo "Docker installation failed."
fi
