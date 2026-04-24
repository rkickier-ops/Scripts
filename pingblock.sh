#!/bin/sh
#
#Drop incoming ping packets from all sources
iptables -A INPUT -p icmp --icmp-type echo-request -j DROP

