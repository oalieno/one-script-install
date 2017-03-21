#!/usr/bin/env bash

dirname=$(dirname "$0")

source ${dirname}/../color.sh
echo -e ${green}"install zsh syntax highlighting..."${normal}

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sed -i -e 's/^plugins=(\(.*\))/plugins=(\1 zsh-syntax-highlighting)\n\n/g' ~/.zshrc
