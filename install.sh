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

mkdir -p ~/.config/alacritty/
cp alacritty.toml ~/.config/alacritty/alacritty.toml
if [ ! -d ~/.config/alacritty/themes ]; then
	mkdir -p ~/.config/alacritty/themes
	git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
fi

cp gitconfig ~/.gitconfig

cp gitignore_global ~/.gitignore_global
