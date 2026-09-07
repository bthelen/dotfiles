#!/usr/bin/env bash

set -e

# get my preferred font
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  # ...
  echo "will install this font later"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  # Mac OSX
  brew install font-jetbrains-mono-nerd-font
fi

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
cp vimrc ~/.vimrc
vim +PluginInstall +qall

if [ ! -d ~/.tmux ]; then
	git clone --single-branch https://github.com/gpakosz/.tmux.git ~/.tmux
	ln -s -f ~/.tmux/.tmux.conf ~/.tmux.conf
fi
cp tmux.conf.local ~/.tmux.conf.local

cp starship.toml ~/.config/starship.toml

mkdir -p ~/.config/yamllint/
cp yamllint-config ~/.config/yamllint/config

mkdir -p ~/.config/ghostty/
cp config.ghostty ~/.config/ghostty/config.ghostty

cp gitconfig ~/.gitconfig

cp gitignore_global ~/.gitignore_global
