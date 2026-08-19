# U1-02b Assignment: Packet Tracer - Configure DHCP on a Wireless Router

**Date:** 2026-08-18

**Source:** U1-02b Assignment: Packet Tracer - Configure DHCP on a Wireless Router

**Environment:** Packet Tracer

## Goal
Määrittää langaton reititin, tietokoneet käyttämään DHCP:tä sekä tarkistaa, että kaikki laitteet voivat kommunikoida keskenään.

## Steps
### Part 1: Set up the network topology
Lisäsin kolme konetta ja yhdistin reitittimeen käyttäen straight-through kaapelia.
<img width="700" height="571" alt="image" src="https://github.com/user-attachments/assets/48a34ba4-190b-4574-b61c-23e7c64175c7" />
### Part 2: Observe the default DHCP settings
Hakemalla PC0 koneelle ip osoite DHCP avulla. Default gateway ip osoite: 192.168.0.1
<img width="917" height="312" alt="Näyttökuva 2026-08-18 183126" src="https://github.com/user-attachments/assets/cd60ab1f-8446-4f3d-bf0c-2290c35edbc3" />

PC0 koneella avasin selaimen ja laitoin URL kenttään Default gatevay ip osoitteen. Kirjauduin admin tunnuksilla sisään ja sivustolla perustietoja reitittimestä.
Löytyy langattoman reitittimen ip osoite: 192.168.0.1 , Sekä DHCP tietoja kuten DHCP-alueen alkupiste 192.168.0.100 ja asiakkaille saatavilla oleva osoitealue 192.168.0.100 - 192.168.0.149.

<img width="800" height="500" alt="image" src="https://github.com/user-attachments/assets/c50f78ba-71ec-4ed6-9282-ba423df5c179" />

### Part 3: Change the default IP address of the wireless router.
Reitittimen ip asetuksista vaihdoin ip osoitteeseen 192.168.5.1. Muutoksen myötä tuli virheviesti sivustolta.
<img width="932" height="215" alt="image" src="https://github.com/user-attachments/assets/76ff6312-647a-43bd-9f8f-edbc223d19e6" />

Vaihdoin PC0 DHCP asetuksista uuteen ip osoitteeseen.

<img width="442" height="325" alt="image" src="https://github.com/user-attachments/assets/a84a6bf9-acd9-4413-9cbf-c6a72a0a1ef9" />

Käytin ip osoitetta 192.168.5.1 selaimessa.
### Part 4: Change the default DHCP range of addresses.
Vaihdoin langattoman reitittimen asetuksista DHCP-alueen alkupisteeksi 192.168.5.126 ja maksimi käyttäjämääräksi 75.
<img width="772" height="237" alt="image" src="https://github.com/user-attachments/assets/35ef0614-0de0-45ab-9051-bc0f285dc998" />

Hain DHCP uudestaan PC0 IP Configuration osiosta pävittääkseen IP osoitteen.
Käytin ipconfig komentoa Command Promtissa
<img width="527" height="321" alt="image" src="https://github.com/user-attachments/assets/7dd952c6-72dd-45e5-aa6e-031cc50bd462" />

PC0 IP-osoite on 192.168.5.126
### Part 5: Enable DHCP on the other PCs.
Otin DHCP:n käyttöön myös PC1 ja PC2:lla, IP Configuration sivulta.
PC1 IP osoite on 192.168.5.127

<img width="450" height="327" alt="image" src="https://github.com/user-attachments/assets/3ab0d847-5670-40c5-8e25-18d54800315e" />

PC2 IP osoite on 192.168.5.128

<img width="442" height="326" alt="image" src="https://github.com/user-attachments/assets/4bc00a4c-bdb8-41cd-b306-bcc66848543d" />

### Part 6: Verify connectivity
PC2:lla käytin ping komentoa Command Promt alustalla vahvistaakseni yhteyden laitteiden välillä.
<img width="587" height="787" alt="image" src="https://github.com/user-attachments/assets/7cd69306-ca80-49a7-b9cc-f97bca257021" />

## Issues and how I resolved them
Aluksi tietokoneet saivat väärät IP-osoitteet, joten päivitin DHCP-asetukset.
