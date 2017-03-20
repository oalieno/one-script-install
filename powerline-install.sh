#!/usr/bin/env bash

./color.sh
echo ${green}"install powerline..."${normal}

# install powerline
pip install powerline-status

location=$(pip show powerline-status | grep "Location" | awk -F': ' '{print $2}')

# edit .vimrc
echo "" >> .vimrc
echo "set rtp+=${location}/powerline/bindings/vim/" >> .vimrc
echo "set laststatus=2" >> .vimrc
echo "set t_Co=256" >> .vimrc

# edit .bashrc
echo "" >> .bashrc
echo "# powerline-status" >> .bashrc
echo "powerline-daemon -q" >> .bashrc
echo "POWERLINE_BASH_CONTINUATION=1" >> .bashrc
echo "POWERLINE_BASH_SELECT=1" >> .bashrc
echo ". /root/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh" >> .bashrc
