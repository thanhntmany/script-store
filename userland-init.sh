#!/bin/bash

sudo apt -y update
sudo apt -y upgrade
sudo apt install -y build-essential make curl git gcc nano htop wget

python3 -V
sudo apt install -y python3-pip
sudo ln -s /usr/bin/python3 /usr/bin/python

cd
sudo apt install -y zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="josh"/' ~/.zshrc
sudo chsh -s $((which zsh)||(which bash)) $USER
zsh ~/.zshrc
