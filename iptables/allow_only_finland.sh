#!/bin/bash
# Purpose: Block all traffic from outside Finland
# Allow traffic from Finnish ip range

# Download a fresh zone file
wget http://www.ipdeny.com/ipblocks/data/countries/fi.zone

ORPort=443
DirPort=9001

# Allow these ip blocks
while read ipblock;
do
  #iptables -A INPUT -s $ipblock -j ACCEPT
  iptables -A INPUT -p tcp --dport $DirPort -s $ipblock -j ACCEPT
  iptables -A INPUT -p tcp --dport $ORPort -s $ipblock -j ACCEPT
done < fi.zone

# Allow localhost
#iptables -A INPUT -s localhost -j ACCEPT
iptables -A INPUT -p tcp --dport $DirPort -s localhost -j ACCEPT
iptables -A INPUT -p tcp --dport $ORPort -s localhost -j ACCEPT

# Drop everything else
#iptables -A INPUT -j DROP
iptables -A INPUT -p tcp --dport $DirPort -j DROP
iptables -A INPUT -p tcp --dport $ORPort -j DROP
