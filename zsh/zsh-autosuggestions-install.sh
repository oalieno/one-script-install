#!/usr/bin/env bash

dirname=$(dirname "$0")

source ${dirname}/../color.sh
echo -e ${green}"install zsh autosuggestions..."${normal}

git clone git://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i -e 's/^plugins=(\(.*\))/plugins=(\1 zsh-autosuggestions)/g' ~/.zshrc
