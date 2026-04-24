#!/bin/sh
#

read -p "What port needs to be opened?" port

sudo iptables -A INPUT -p tcp --dport $port -j ACCEPT
sudo iptables -A OUTPUT -p tcp --dport $port -j ACCEPT

