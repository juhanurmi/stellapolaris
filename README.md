# Stella Polaris Network
Stella Polaris Network - Independent Finnish Tor network

## Join to the private Tor test network

Edit your /etc/tor/torrc file:

```
DirAuthority kenraali01 orport=34567 v3ident=4BB29618DA0EFF91301FF8FDE131D1F6EFBE4303 130.230.113.228:44567 3255ADB9F495A837146912479C289526BDEA9263
DirAuthority kenraali02 orport=34567 v3ident=952CAEAACB791A5332C89BBB62BB78E7579D22A0 130.230.113.229:44567 F276A4967B0517DB8017C0E7ED3A0532A174794F
DirAuthority kenraali03 orport=34567 v3ident=8B3B4695F20CFA2C7092549A25C0C7281A8C211B 130.230.113.230:44567 D40CE1A908747BD3F429D6D43BC7546072DCE88C

TestingTorNetwork 1
ConnLimit 60
ShutdownWaitLength 0
ProtocolWarnings 1
SafeLogging 0
DisableDebuggerAttachment 0

ExitPolicy accept *:*

BandwidthRate 512 KB
BandwidthBurst 2048 KB

ORPort 443
RunAsDaemon 1
DirPort 9001
AvoidDiskWrites 1
ContactInfo YOUR_EMAIL_ADDRESS

Nickname SELECT_SERVER_NAME
```

Edit fields YOUR_EMAIL_ADDRESS and SELECT_SERVER_NAME.

## Install latest Tor from the repository:

* https://www.torproject.org/docs/debian

## Stella Polaris Network consensus:

* http://130.230.113.230:44567/tor/status-vote/current/consensus
