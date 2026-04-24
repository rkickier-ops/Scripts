#!/bin/sh
#

sudo iptables -A INPUT -p tcp --syn -m limit --limit 1/second -j ACCEPT

sudo iptables -A INPUT -p tcp --syn -j DROP

