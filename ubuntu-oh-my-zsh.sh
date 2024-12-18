#!/bin/bash


# ohmyzsh
cd
sudo apt install -y zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="josh"/' ~/.zshrc
sudo chsh -s $((which zsh)||(which bash)) $USER
zsh ~/.zshrc
