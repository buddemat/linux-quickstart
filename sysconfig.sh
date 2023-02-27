#!/usr/bin/env bash

# set swappiness to 10
filename=/etc/sysctl.conf
if [[ ! -z $(grep "^vm.swappiness" "$filename") ]]; then 
    sudo sed -i 's/^vm.swappiness.*$/vm.swappiness = 10/' $filename;
else
    echo 'vm.swappiness = 10' | sudo tee -a  $filename > /dev/null;
fi
