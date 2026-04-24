#!/bin/sh
#
#Blocking telnet (port 23) for both input and output
sudo iptables -A INPUT -p tcp --dport 23 -j REJECT
sudo iptables -A OUTPUT -p tcp --dport 23 -j REJECT


