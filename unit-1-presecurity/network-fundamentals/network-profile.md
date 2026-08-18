# U1-02a Assignment: Map Your Network

**Date:** 2026-08-17
**Source:** U1-02a Assignment: Map Your Network
**Environment:** Kali linux

## Goal
Oppia erilaisia termejä, komentoja ja niiden toteuttamista terminaalissa. Network profile luominen.

## Steps
### Q1:
IPv4 osoite: 192.168.249.xxx

Mac osoite: 00:0c:29:b3:c0:xx
### Q2:
Yksityinen IP-osoite toimii vain oman lähiverkon sisällä, kun taas julkinen IP-osoite näkyy internetiin, ja kotireititin käyttää yksityisiä osoitteita sisäverkossa, jotta useat laitteet voivat jakaa saman julkisen IP-osoitteen turvallisesti.
### Q3:
IP-osoite kertoo laitteen sijainnin verkossa ja voi muuttua, kun taas MAC-osoite on yleensä laitteiston verkkokorttiin pysyvästi liitetty tunniste. IP-osoite toimii OSI-mallin verkkokerroksella (Layer 3) ja MAC-osoite siirtoyhteyskerroksella (Layer 2).
### Q4:
- How many total addresses does a /24 contain?

Sisältää 256 osoitetta
- How many of those are usable for devices (after subtracting the network and broadcast addresses)?

254 osoitetta
- If your IP is 192.168.1.37/24, what is the network address and what is the broadcast address?

Network address: 192.168.1.0

Broadcast address: 192.168.1.225
### Q5:
Default gateway: 192.168.249.2

Default gateway on samassa aliverkossa kuin koneeni, koska sekä koneeni IP-osoite että gateway kuuluvat samaan 192.168.249.0/24 verkkoon
### Q6:
Gatewaylle keskimääräinen round-trip time oli 0.381ms. 1.1.1.1 keskimääräinen round-trip time oli 28.806ms.
Gateway on paljon nopeampi, koska se sijaitsee omassa lähiverkossa, kun taas 1.1.1.1 sijaitsee internetissä.
### Q7:
Tämän mahdollisti DNS-palvelu, joka muuntaa nimen IP-osoitteeksi, jota tietokone voi käyttää yhteyden muodostamiseen.
### Q8:
Koneeni käyttää kahta DNS-palvelinta: 192.168.249.2 (Default gateway) ja 192.168.163.1
### Q9:
example.com palautti ip osoitteet: 104.20.23.154, 172.66.147.243, 2606:4700:10::6814:179a, 2606:4700:10::ac42:93f3.
nslookup käyttö google.com ja youtube.com sivustoilla palauttivat useita ja enemmän ip osoitteita. Suurilla verkkosivustoilla on usein useita IP-osoitteita nopeuden parantamista ja toimintavarmuuden lisäämistä varten.
### Q10:
Jos joku pystyisi seuraamaan verkkoliikennettäni hän voisi esimerkiksi päätellä, millaisilla verkkosivustoilla käyn ja mitä palveluita käytän.
### Q11:
Traceroute ei saavuttanut example.com-palvelinta. Ensimmäinen hop oli 192.168.249.2 eli default gateway.
### Q12:
*** ilman vastausta ei välttämättä tarkoita, että yhteys on rikki. Tarkoittaa yleensä että yhteys toimii, mutta kyseinen verkkolaite ei vastaa tracerouten pyyntöihin tai estää ne.
### Q13:
Koneeni kuuntelee porttia 22. Portti 22 kuuntelee osoitteessa 0.0.0.0 ja [::] eli se on tavoitettavissa verkosta.
### Q14:
Porttia 22 käytetään yleensä SSH-yhteyksiin ja porttia 445 SMB-tiedostojen jakamiseen. Portti joka kuuntelee Localhostissa on turvallisempi, koska silloin palveluun pääsee vain omalta koneelta. Kaikissa verkkoliitännöissä kuunteleva portti on vähemmän turvallinen, koska siihen voidaan yrittää muodostaa yhteys myös verkosta.
### Q15:
Koneeni paljastaa vain yhden verkosta tavoitettavan palvelun, portin 22. Se oli vähemmän kuin odotin.
# Network Profile — [my machine]

## Identity
- IPv4 address: 192.168.249.xxx
- Subnet mask / CIDR: 255.255.255.0
- MAC address: 00:0c:29:b3:c0:xx
- Network address: 192.168.249.0
- Broadcast address: 192.168.249.255

## Gateway and reachability
- Default gateway: 192.168.249.2
- Ping to gateway (avg): 0.381 ms
- Ping to 1.1.1.1 (avg): 28.806 ms

## DNS
- Configured DNS server(s): 192.168.249.2 ja 192.168.163.1
- example.com resolves to: 104.20.23.154, 172.66.147.243, 2606:4700:10::6814:179a, 2606:4700:10::ac42:93f3

## Path to the internet
- Hops to example.com: Traceroute ei saavuttanut example.com-palvelinta.
- First hop: 192.168.249.2 eli default gateway.

## Listening ports
| Port | Protocol | Interface (localhost / all) | Common use |
|------|----------|-----------------------------|------------|
|  22  |   TCP    |     All (0.0.0.0 , [::])    |    SSH     |

## Reflection (150–200 words)
- What surprised you about your own network?

Tietokone käyttää taustalla paljon verkkoliikennettä ja yhteyksiä.
- Which open port (if any) would you want to investigate or close?

Tutkisin porttia 22, koska se käyttää SSH-yhteyksiä ja on avoinna verkolle.
- Which command do you think you'll use most often, and why?

Käyttäisin todennäköisesti eniten ipconfig-komentoa, löytyy perus verkkotiedot, voi hyödyntää tehtävissä.

## Findings
Aiheessa oli hyvää kertausta. Opin, että DNS muuttaa verkkosivujen nimet IP-osoitteiksi, jotta tietokone tietää, mihin palvelimeen ottaa yhteyttä.
## Issues and how I resolved them
Piti varmistaa mikä oli oikea ip osoite ja verkkokortti, käytin ip route komentoa avuksi.


