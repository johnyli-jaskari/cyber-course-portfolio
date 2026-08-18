# U1-02a Assignment: Map Your Network

**Date:** 2026-08-17
**Source:** Assignment U1-02a Assignment: Map Your Network
**Environment:** Kali linux

## Goal
What I was trying to do.

## Steps
### Q1:
192.168.249.xxx
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
example.com palautti ip osoitteet: 104.20.23.154, 172.66.147.243, 2606:4700:10::6814:179a, 2606:4700:10::ac42:93f3
nslookup käyttö google.com ja youtube.com sivustoilla, palauttivat useita ja enemmän ip osoitteita. Suurilla verkkosivustoilla on usein useita IP-osoitteita nopeuden parantamista ja toimintavarmuuden lisäämistä varten.
### Q10:

## Findings
What I learned / what the output told me.

## Issues and how I resolved them
Problems encountered, fixes applied.

## References
Links to docs, write-ups, or related notes.
