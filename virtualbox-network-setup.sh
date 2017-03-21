#!/usr/bin/env bash

dirname=$(dirname "$0")

source ${dirname}/color.sh
echo -e ${green}"setup virtualbox network..."${normal}

file="/etc/network/interfaces"
ip="192.168.56.99"

echo "" >> ${file}
echo "auto eth1" >> ${file}
echo "iface eth1 inet static" >> ${file}
echo "address ${ip}" >> ${file}
echo "netmask 255.255.255.0" >> ${file}
echo "network 192.168.56.0" >> ${file}

ifup eth1
