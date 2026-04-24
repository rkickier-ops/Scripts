#!/bin/sh
#
#Asking the user what ip address they wish to block
read -p "What IP address do you want to block?" ADDRESS

#Blocking the specified address
sudo iptables -I INPUT -s $ADDRESS -j DROP


