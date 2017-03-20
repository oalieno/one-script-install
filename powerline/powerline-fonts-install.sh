#!/usr/bin/env bash

dirname=$(dirname "$0")

source ${dirname}/../color.sh
echo -e ${green}"install powerline fonts..."${normal}

# install fonts
mkdir -p ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf -P ~/.fonts
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf -P ~/.config/fontconfig/conf.d
fc-cache -vf ~/.fonts/
