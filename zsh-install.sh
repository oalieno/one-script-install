#!/usr/bin/env bash

apt-get update
apt-get install zsh

chsh -s `which zsh`
