#!/usr/bin/env bash

set -e

cp vimrc ~/.vimrc

cp starship.toml ~/.config/starship.toml

mkdir -p ~/.config/yamllint/
cp yamllint-config  ~/.config/yamllint/config

cp gitconfig ~/.gitconfig

cp gitignore_global ~/.gitignore_global
git config --global core.excludesfile $HOME/.gitignore_global
