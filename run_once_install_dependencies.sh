#!/usr/bin/env sh

echo "Updating system"
sudo apt -y update
sudo apt -y upgrade

echo "installing dependencies"
sudo apt -y install fonts-hack
sudo apt -y install fonts-firacode
sudo apt -y install wmctrl x11-utils cmake alacritty git-lfs build-essential libsdl2-dev clang clang-format clangd libssl-dev
sudo apt -y install mit-scheme mit-scheme-dbg mit-scheme-doc
sudo apt -y install neofetch conky conky-std gnuplot valgrind texlive texlive-extra-utils latexmk texlive-latex-extra
sudo apt -y install gnome-tweaks libncurses5 nsight-compute guake pylint gcc-11 g++-11
sudo apt -y install onedrive
sudo apt -y install ripgrep fzf

# edm
sudo apt -y install kicad kicad-packages3d

# embedded development
sudo apt -y install gdb-multiarch minicom openocd

sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt -y update
sudo apt -y install neovim

