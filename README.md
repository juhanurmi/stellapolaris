# Stella Polaris Network

**Stella Polaris Network: Independent Finnish Tor network**

**Stella Polaris -verkko: Itsenäinen Suomalainen Tor-verkko**

![Alt text](/images/finland_flag.png?raw=true "The Tor Browser")

Stella Polaris -verkko on Suomen sisäinen itsenäinen Tor-verkko,
joka tarjoaa mahdollisuuden kaivautua sisämaan puolustusasemiin poikkeustilanteissa.

Tällainen poikkeustilanne voisi olla globaalin internet-reitityksen katko.
Stella Polaris -verkko tarjoaa tällaisiin hankaliin kriiseihin
kotimaan vara-asemat internetissä.

Nykyisen globaalin internetin toiminta edellyttää häiriöttömiä yhteyksiä
Suomesta ulkomaailmaan. Häiriö verkkoliikenteessä ulkomaille
johtaa keskeisten verkkopalveluiden saatavuuden katkeamiseen:
yleisimpien uutissivustojen, hakukoneiden, sosiaalisen median ja pankkien
sekä muiden yritysten verkkopalvelut vaativat toimiakseen häiriöttömiä
yhteyksiä globaaliin internettiin.

Stella Polaris -verkko on hajautettu vertaisverkko,
jonka reitittimet ovat Suomessa.
Teknisesti verkko on oma erillinen Tor-verkkonsa.
Tällainen verkko tarjoaa tehokasta suojaa esimerkiksi
kriisitilanteessa ulkomailta tulevaa tiedustelua vastaan.
Se jatkaa toimintaansa niin kauan kuin
Suomessa sisäinen internet on edes osittain kunnossa.

Verkko tarjoaa viestinnälle vahvan päästä päähän **salauksen**,
**palvelunestohyökkäystorjunnan**,
oman **hajautetun piilopalvelu onion-nimipalvelujärjestelmänsä**,
sekä **HTTPS-yhteyksiä vahvemmat varmenteet verkkopalveluilleen**.

Näin voidaan tarjota kansalaisille tärkeitä tiedotuskanavia ja viestiyhteyksiä
salatusti Suomen sisäverkossa tukeutumatta ulkomaailman varassa toimiviin
internet-palveluihin.

**Stella Polaris -verkko on Suomen sisäinen puolustusverkko:
se tarjoaa vahvasti salatun, varmennetun, hajautetun,
hyökkäyksiä kestävän ja itsenäisen järjestelmän
kotimaan sisäiseen internettiin.**

Verkko on maantieteellisesti hajautettu Suomeen. Se on myös teknisesti
hajautettu siten, että osaverkkojen ja reitittimien häiriöistä huolimatta
verkko jatkaa toimintaansa normaalisti. Verkkoon liitetyt uudet reitittimet
lisäävät kestävyyttä ja kykyä selviytyä, vaikka osa Suomen sisäisestä
internetistä ja verkkolaitteista kärsisi häiriöistä
tai joutuisi esimerkiksi tuntemattoman hyökkääjän haltuun.

## This network is only for Finnish IP range and for testing purposes.

* Only for Finnish IP address ranges: you cannot join outside Finland

## Join to the private Tor test network

![Alt text](/images/TheTorBrowser.png?raw=true "The Tor Browser")

![Alt text](/images/yle_onion.png?raw=true "The Tor Browser")

### Connect with the Tor Browser

Add to tor-browser_en-US/Browser/TorBrowser/Data/Tor/torrc:

```
DirAuthority kenraali orport=34567 v3ident=4BB29618DA0EFF91301FF8FDE131D1F6EFBE4303 130.230.113.228:44567 3255ADB9F495A837146912479C289526BDEA9263
DirAuthority prikaatikenraali orport=34567 v3ident=952CAEAACB791A5332C89BBB62BB78E7579D22A0 130.230.113.229:44567 F276A4967B0517DB8017C0E7ED3A0532A174794F
DirAuthority kenraalimajuri orport=443 v3ident=8B3B4695F20CFA2C7092549A25C0C7281A8C211B 185.112.82.102:9001 D40CE1A908747BD3F429D6D43BC7546072DCE88C

TestingTorNetwork 1
ConnLimit 60
ShutdownWaitLength 0
ProtocolWarnings 1
SafeLogging 0
DisableDebuggerAttachment 0
```

### Add your relay

### Install latest Tor from the repository:

* https://www.torproject.org/docs/debian

### Edit your /etc/tor/torrc file:

```
DirAuthority kenraali orport=34567 v3ident=4BB29618DA0EFF91301FF8FDE131D1F6EFBE4303 130.230.113.228:44567 3255ADB9F495A837146912479C289526BDEA9263
DirAuthority prikaatikenraali orport=34567 v3ident=952CAEAACB791A5332C89BBB62BB78E7579D22A0 130.230.113.229:44567 F276A4967B0517DB8017C0E7ED3A0532A174794F
DirAuthority kenraalimajuri orport=443 v3ident=8B3B4695F20CFA2C7092549A25C0C7281A8C211B 185.112.82.102:9001 D40CE1A908747BD3F429D6D43BC7546072DCE88C

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

## Stella Polaris Network consensus:

* http://130.230.113.228:44567/tor/status-vote/current/consensus

![Alt text](/images/be_ready.png?raw=true "The Tor Browser")
