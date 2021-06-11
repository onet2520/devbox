#!/bin/bash
echo "[devbox] Updating pacakge database..."
sudo apt update

echo "[devbox] Install Vim..."
sudo apt-get install vim

echo "[devbox] Install fuzzy finder..."
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
