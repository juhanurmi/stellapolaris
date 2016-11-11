# stellapolaris
Stella Polaris - Independent sub Tor network

First 10 relays on test network
-------------------------------

/etc/tor/torrc

```sh
ORPort 443
ExitPolicy reject *:*
RunAsDaemon 1
ContactInfo juha.nurmi(att)tut.fi
DirPort 9001
AvoidDiskWrites 1
MaxMemInQueues 704 MB
MyFamily stellapolaris
Nickname <Dubhe|Merak|Phecda|Megrez|Alioth|Mizar|Alkaid|Polaris|Kochab|Pherkad>
```

```sh
sudo apt-get install haveged
sudo apt-get install tor
sudo nano /etc/tor/torrc
sudo service tor reload
```

130.230.113.228 tor1
130.230.113.229 tor2
130.230.113.230 tor3
130.230.113.231 tor4
130.230.113.232 tor5
130.230.113.233 tor6
130.230.113.234 tor7
130.230.113.235 tor8
130.230.113.236 tor9
130.230.113.237 tor10
