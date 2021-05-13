#!/usr/bin/env bash

set -e

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
cp vimrc ~/.vimrc
vim +PluginInstall +qall

cp starship.toml ~/.config/starship.toml

mkdir -p ~/.config/yamllint/
cp yamllint-config  ~/.config/yamllint/config

cp gitconfig ~/.gitconfig

cp gitignore_global ~/.gitignore_global
git config --global core.excludesfile $HOME/.gitignore_global
