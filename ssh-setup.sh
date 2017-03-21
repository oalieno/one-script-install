#!/usr/bin/env bash

dirname=$(dirname "$0")

source ${dirname}/color.sh
echo -e ${green}"setup ssh..."${normal}

apt-get install -y openssh-server

update-rc.d -f ssh remove
update-rc.d -f ssh defaults

cd /etc/ssh
mkdir -p insecure-original-default-kali-keys
mv ssh_host_* insecure-original-default-kali-keys
dpkg-reconfigure openssh-server
echo "PermitRootLogin yes" >> sshd_config

service ssh restart
update-rc.d -f ssh enable 2 3 4 5

echo -e ${cyan}"You can change /etc/motd to make your own banner"
echo -e "And strongly recommend you to change ssh port to other port not 22 ( in /etc/ssh/sshd_config )"${normal}
