#!/usr/bin/env bash

./color.sh
echo ${green}"install zsh..."${normal}

apt-get update
apt-get install zsh

chsh -s `which zsh`
