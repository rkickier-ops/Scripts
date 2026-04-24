#!/bin/sh
#
#Asking for desired MAC to block
read -p "What MAC address would you like to block?\n" mac

#Using the user input to drop traffic from the chosen source MAC address
sudo iptables -I INPUT -m mac --mac-source $mac -j DROP

