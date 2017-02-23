#!/bin/bash
# Purpose: Block all traffic from outside Finland
# Allow traffic from Finnish ip range

# Download a fresh zone file
wget http://www.ipdeny.com/ipblocks/data/countries/fi.zone

# Allow these ip blocks
while read ipblock;
do
    iptables -A INPUT -p tcp --dport 44567 -s $ipblock -j ACCEPT
done < fi.zone

# Allow localhost
iptables -A INPUT -p tcp --dport 44567 -s localhost -j ACCEPT

# Drop everything else
iptables -A INPUT -p tcp --dport 44567 -j DROP
