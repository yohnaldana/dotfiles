#!/bin/bash

# Create directories
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/nvim

# Create symlinks
ln -sf ~/.dotfiles/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/nvim/init.lua ~/.config/nvim/init.lua
