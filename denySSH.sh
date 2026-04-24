#!/bin/sh
#

#Deleting any potential accepting rules that may precede our rejections
sudo iptables -D INPUT -p tcp --dport 22 -j ACCEPT
sudo iptables -D OUTPUT -p tcp --dport 22 -j ACCEPT

#Creating new rejection rules for the ssh port to deny ssh connection
sudo iptables -A INPUT -p tcp --dport 22 -j REJECT
sudo iptables -A OUTPUT -p tcp --dport 22 -j REJECT



