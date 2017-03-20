#!/usr/bin/env bash

$PWD/../color.sh
echo ${green}"install oh my zsh..."${normal}

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
