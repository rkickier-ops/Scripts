#!/bin/sh
#
#Asking for desired MAC to allow
read -p "What MAC address would you like to allow?" mac

#Removing blocking rule for specified mac if it exists
sudo iptables -D INPUT -m mac --mac-source $mac -j DROP

#Adding a rule to allow the specified MAC
sudo iptables -I INPUT -m mac --mac-source $mac -j ACCEPT

