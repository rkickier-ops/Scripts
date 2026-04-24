#!/bin/sh

#This adds a rule to the INPUT chain on the filter table that limits SYN packets 

sudo iptables -A INPUT -p tcp --syn -m limit --limit 1/second -j ACCEPT

#-p tcp --syn defines the rule to apply to initial SYN tcp packets
#-m limit --limit 1/second uses -m to match the limit module and set the limit to one SYN packet per second and -j ACCEPT lets the limited traffic through

#This command puts a drop rule later in the chain meaning all packets that are limited by the previous section reach this rule and are dropped.
sudo iptables -A INPUT -p tcp --syn -j DROP
