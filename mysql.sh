#!/bin/bash

echo "Updating package list."
sudo apt update -y

echo "Installing MySQL Server."
sudo apt install -y mysql-server

echo "Starting MySQL service..."
sudo systemctl start mysql

echo "Enabling MySQL to start on boot."
sudo systemctl enable mysql

echo "Checking MySQL server status."
sudo systemctl status mysql --no-pager

if systemctl is-active --quiet mysql; then
    echo "MySQL installation was successful and is running."
else
    echo "MySQL installation failed or the service is not running."
fi
