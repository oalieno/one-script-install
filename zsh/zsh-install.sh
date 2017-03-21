#!/usr/bin/env bash

dirname=$(dirname "$0")

source ${dirname}/../color.sh
echo -e ${green}"install zsh..."${normal}

apt-get update
apt-get install -y zsh

echo -e ${cyan}"If you want to use zsh as your default shell, type : "
echo -e "chsh -s $(which zsh)"${normal}
