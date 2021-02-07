#!/usr/bin/env sh

echo "Updating system"
sudo apt -y update
sudo apt -y upgrade

echo "installing dependencies"
sudo apt -y install fonts-hack
sudo apt -y install fonts-firacode