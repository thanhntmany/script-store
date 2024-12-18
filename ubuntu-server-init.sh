#!/bin/bash

sudo apt -y update
sudo apt -y upgrade
sudo apt install -y build-essential make curl git gcc nano htop wget

# Python3
python3 -V
sudo apt install -y python3-pip
sudo ln -s /usr/bin/python3 /usr/bin/python

# Nodejs: https://nodejs.org/en/download/package-manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
nvm install latest

# vscode
sudo snap install --classic code

# tmux
sudo apt-get install -y tmux
tmux setenv 'LC_ALL' 'en_IN.UTF-8' 
tmux setenv 'LANG' 'en_IN.UTF-8'