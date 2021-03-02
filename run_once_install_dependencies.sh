#!/usr/bin/env sh

echo "Updating system"
sudo apt -y update
sudo apt -y upgrade

echo "installing dependencies"
sudo apt -y install fonts-hack
sudo apt -y install fonts-firacode
sudo apt -y install wmctrl x11-utils cmake alacritty git-lfs build-essential libsdl2-dev clang clang-format
sudo apt -y install neofetch conky conky-std gnuplot valgrind texlive texlive-extra-utils latexmk
sudo apt -y install gnome-tweaks
