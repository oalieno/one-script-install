#!/usr/bin/env bash

./color.sh
echo ${green}"install powerline fonts..."${normal}

# install fonts
mkdir -p ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf -P ~/.fonts
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf -P ~/.config/fontconfig/conf.d
fc-cache -vf ~/.fonts/
