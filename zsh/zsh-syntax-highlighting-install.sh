#!/usr/bin/env bash

dirname=$(dirname "$0")

source ${dirname}/../color.sh
echo -e ${green}"install zsh syntax highlighting..."${normal}

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo -e ${cyan}"add zsh-syntax-highlighting to plugins=(...) in .zshrc"
