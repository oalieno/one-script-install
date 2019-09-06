#!/usr/bin/env bash

dirname=$(dirname "$0")

source ${dirname}/../color.sh
echo -e ${green}"install oh my zsh..."${normal}

sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo -e ${cyan}"If you want to use the most awesome theme : agnoster or powerlevel9k/powerlevel9k"
echo -e "You need to install powerline fonts ( powerline-fonts-install.sh )"${normal}
