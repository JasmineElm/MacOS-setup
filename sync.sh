#!/bin/bash

# bundle brew

# brew bundle dump --force --file=brewfile

# sync configs

#-$HOME
# - .zshrc
# - .vim
# - .aliases

mkdir -p configs

# SHELL
# copy all ~/.zsh* files ignore directories
for file in ~/.zsh*; do
  if [ -f "$file" ]; then
    cp $file configs/
  fi
done
cp ~/.aliases configs/.aliases
cp ~/.shell_functions configs/.shell_functions
cp ~/.env_vars configs/.env_vars
## BASH
cp -r ~/.bash* configs/
# GIT
cp ~/.gitconfig configs/.gitconfig
cp ~/.gitignore configs/.gitignore
# (N)VIM
cp -r ~/.vim/vimrc configs/.vim/vimrc
cp -r ~/.vim/local_functions.vim configs/.vim/local_functions.vim
# NEOVIM - 

# htop
cp ~/.htoprc configs/.htoprc

# inpurtc
cp ~/.inputrc configs/.inputrc

# profile
cp ~/.profile configs/

# iTerm2
# mkdir -p configs/.config/iterm2/sockets
# cp -R ~/.config/iterm2 configs/.config/iterm2

# Zellij
cp -r ~/.config/zellij/ configs/.config/zellij

