#!/bin/bash
# Purpose: Block all traffic from outside Finland
# Allow traffic from Finnish ip range

# A good idea to add this script to crontab
# On 8:05 every Saturday:
# rm old fi.zone, download a fresh one and execute this script
# 5 8 * * Sun cd /this/folder && rm fi.zone && bash allow_only_finland.sh

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
