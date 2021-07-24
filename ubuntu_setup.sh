#!/bin/bash
echo "[devbox] Updating pacakge database..."
sudo apt update

echo "[devbox] Install Vim..."
sudo apt-get install vim

echo "[devbox] Install Oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Set default editor..."
echo "export EDITOR=/usr/bin/vim" >> ~/.zshrc
echo "export VISUAL=/usr/bin/vim" >> ~/.zshrc

echo "[devbox] Install Powerlevel10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

echo "[devbox] Install Fuzzy Finder..."
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
