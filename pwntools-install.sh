#!/usr/bin/env bash

dirname=$(dirname "$0")

source ${dirname}/color.sh
echo -e ${green}"install pwntools..."${normal}

apt-get update
apt-get install -y python2.7 python-pip python-dev git libssl-dev libffi-dev build-essential
pip install --upgrade pip
pip install --upgrade pwntools
