#!/bin/bash

set -e

if [ -z "$1" ]
  then
    echo "bash create_authority.sh"
    echo "Give server nickname as an argument."
    exit 1
fi

mkdir ~/tor-finland/
cd ~/tor-finland/
mkdir ~/tor-finland/logs/
mkdir ~/tor-finland/keys/

IP_ADDRESS=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')

cat >~/tor-finland/torrc <<EOL
Nickname $1
SocksPort 0
OrPort 34567
Address $IP_ADDRESS
DirPort 44567

AuthoritativeDirectory 1
V3AuthoritativeDirectory 1
ContactInfo juha.nurmi(att)tut.fi

ExitPolicy reject *:*

EOL

cat >~/tor-finland/tor-service-defaults-torrc <<EOL
TestingTorNetwork 1
DataDirectory ~/tor-finland/
ConnLimit 60
ShutdownWaitLength 0
PidFile ~/tor-finland/pid
Log notice file ~/tor-finland/logs/notice.log
Log info file ~/tor-finland/logs/info.log
ProtocolWarnings 1
SafeLogging 0
DisableDebuggerAttachment 0

EOL

tor-gencert --create-identity-key -m 12 -a $IP_ADDRESS:44567 \
            -i ~/tor-finland/keys/authority_identity_key \
            -s ~/tor-finland/keys/authority_signing_key \
            -c ~/tor-finland/keys/authority_certificate \

tor --defaults-torrc ~/tor-finland/tor-service-defaults-torrc -f ~/tor-finland/torrc \
    --list-fingerprint --orport 1 \
    --dirserver "x 127.0.0.1:1 ffffffffffffffffffffffffffffffffffffffff" \
    --datadirectory ~/tor-finland/

echo "The value FINGER1 can be found on Authority Server in the file ~/tor-finland/keys/authority_certificate, search fingerprint."
FINGER1=$(grep fingerprint ~/tor-finland/keys/authority_certificate | cut -d' ' -f 2)
echo "The value FINGER2 can be found on Authority Server in the file ~/tor-finland/fingerprint."
FINGER2=$(cat ~/tor-finland/fingerprint | cut -d' ' -f 2)

echo "Add this line to torrc too."
echo "DirAuthority $1 orport=34567 v3ident=$FINGER1 $IP_ADDRESS:44567 $FINGER2"

echo "Test Tor:"
echo "tor --defaults-torrc ~/tor-finland/tor-service-defaults-torrc -f ~/tor-finland/torrc --datadirectory ~/tor-finland/"
