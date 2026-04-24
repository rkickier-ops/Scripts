#!/bin/sh

#Opening the ports on the filter table, port 80 for initial traffic and port 8080 for redirection

sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -A OUTPUT -p tcp --dport 80 -j ACCEPT

sudo iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
sudo iptables -A OUTPUT -p tcp --dport 8080 -j ACCEPT

# Adding a rule to the prerouting table to redirect incoming port 80 traffic to port 8080
sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080

echo "All done!"
