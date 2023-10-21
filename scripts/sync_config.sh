#!/usr/bin/env bash

rsync -r --exclude=".git" ~/.config/nvim/lua/user ~/dotfile/
rsync -r ~/scripts ~/dotfile/
rsync -r ~/.config/kitty ~/dotfile/
rsync -r ~/.config/ranger ~/dotfile/
rsync ~/.zshrc ~/dotfile

cd ~/dotfile
git add .
git commit -m "${1}"
git push
