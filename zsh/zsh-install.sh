#!/usr/bin/env bash

$PWD/../color.sh
echo ${green}"install zsh..."${normal}

apt-get update
apt-get install zsh

chsh -s `which zsh`
