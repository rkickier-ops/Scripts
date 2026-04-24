#!/bin/sh
#
#Asking the user what ip address they wish to allow
read -p "What IP address do you want to allow?" ADDRESS

#Deleting any blocking rules for the specified address
sudo iptables -D INPUT -s $ADDRESS -j DROP

#Adding a rule for allowing them specifically
sudo iptables -I INPUT -s $ADDRESS -j ACCEPT


