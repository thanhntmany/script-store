#!/bin/bash

sudo apt -y update
sudo apt -y upgrade
sudo apt install -y build-essential make curl git gcc nano htop wget

# Python 3
python3 -V
sudo apt install -y python3-pip
sudo ln -s /usr/bin/python3 /usr/bin/python

# Nodejs: https://nodejs.org/en/download/package-manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
nvm install latest

mkdir tmp
cd tmp
# chrome
[ ! -f "./google-chrome-stable_current_amd64.deb" ] && wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sudo dpkg -i google-chrome-stable_current_amd64.deb

# vscode
sudo snap install --classic code

# terminator
sudo apt-get install -y terminator
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/terminator

# Oh-my-zsh
cd
sudo apt install -y zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="josh"/' ~/.zshrc
sudo chsh -s $((which zsh)||(which bash)) $USER
zsh ~/.zshrc
