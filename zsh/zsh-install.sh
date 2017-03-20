#!/usr/bin/env bash

dirname=$(dirname "$0")

source ${dirname}/../color.sh
echo -e ${green}"install zsh..."${normal}

apt-get update
apt-get install zsh

chsh -s `which zsh`
