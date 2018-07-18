#!/usr/bin/env bash

dirname=$(dirname "$0")

source ${dirname}/../color.sh
echo -e ${green}"install oh my zsh..."${normal}

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

echo -e ${cyan}"If you want to use the most awesome theme : agnoster or powerlevel9k/powerlevel9k"
echo -e "You need to install powerline fonts ( powerline-fonts-install.sh )"${normal}
