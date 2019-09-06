#!/usr/bin/env bash

dirname=$(dirname "$0")

source ${dirname}/../color.sh
echo -e ${green}"install zsh..."${normal}

sudo apt-get update
sudo apt-get install -y zsh

echo -e ${cyan}"If you want to use zsh as your default shell, type : "
echo -e "chsh -s $(which zsh)"
echo -e "if password is required, edit /etc/pam.d/chsh: auth sufficient pam_shells.so"${normal}
