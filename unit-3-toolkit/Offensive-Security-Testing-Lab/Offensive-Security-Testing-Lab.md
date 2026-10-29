# Offensive Security Testing Lab

**Date:** 2026-10-27 <br>
**Source:** Offensive Security Testing Lab <br>
**Environment:** Windows

## Goal
Kali linux ja Metasploitable 2 virtuaalikoneiden asennus ja oikein konfigurointi samassa ohjelmistossa kuten VMware.

## Steps
### Install VMware

VMware työpöydän asennus/päivitys Broadcom sivustolta.

<img width="1896" height="817" alt="image" src="https://github.com/user-attachments/assets/0d02d816-0a16-47d3-903b-1ad96bf058f8" />

<img width="811" height="587" alt="image" src="https://github.com/user-attachments/assets/03928bc3-252e-4037-9bc0-49c4f32be7b2" />

### Create the Kali VM

Kali Linux virtuaalikoneen tiedoston lataus sekä asennus VMware:ssa.

<img width="700" height="501" alt="image" src="https://github.com/user-attachments/assets/196864e4-f099-41a8-b94c-ec343cfc771b" />

Valitsin Vmwaressa Kali ISO tiedoston ja asetin oikeat laitteistoasetukset.  

<img width="1377" height="725" alt="image" src="https://github.com/user-attachments/assets/887e878d-4b8e-4e6e-9dfc-558f213cd32b" />

<img width="1000" height="700" alt="image" src="https://github.com/user-attachments/assets/764d093b-7673-4141-8419-b14929535d97" />

Käynnistin Kali Linux ja tein asennuksen loppuun. 

<img width="738" height="582" alt="image" src="https://github.com/user-attachments/assets/f0a31533-dd22-4dc5-843d-a058af8f80fd" />

### Import Metasploitable 2

Metasploitable 2 virtuaalikoneen asennus. Tiedoston lataus, purkaminen ja VMwaressa avaaminen.

<img width="1847" height="405" alt="image" src="https://github.com/user-attachments/assets/2938c4ac-626b-483d-a7ba-1b65e931de33" />

Asetin network adapter Host-Only tilaan

<img width="1195" height="926" alt="image" src="https://github.com/user-attachments/assets/ff984d0e-46fa-472a-8249-0be7a65115b6" />

### Lock down the network

Kali Linux käyttää Host-only ja NAT Network Adaptereita. Metasploitable 2 on käytössä vain yksi Network Adapter Host-only. Molempien Host-Only verkkosovittimet ovat samassa verkossa VMnet1.

<img width="892" height="200" alt="image" src="https://github.com/user-attachments/assets/825a7887-045f-4f43-9dd0-f9e7148a462f" />

### Verify isolation

Kokeilin yhdistää internettiin Metasploitable 2 virtuaalikoneesta.

<img width="816" height="273" alt="image" src="https://github.com/user-attachments/assets/99392869-e718-4749-ab36-e08fb95fe548" />

Kali Linux yhteyden varmistaminen Metasploitable 2 virtuaalikoneeseen. Ensin komento ```ifconfig``` Metasploitable VM:ssä.

<img width="786" height="527" alt="image" src="https://github.com/user-attachments/assets/c224b623-b4a1-47e7-9e19-75a00144f39c" />

Käytin Metasploitable eth0 IP:tä Kali Linux terminaalissa, komento ```ping -c 4 192.168.163.128```

<img width="912" height="352" alt="image" src="https://github.com/user-attachments/assets/17192e97-69db-4629-8b6a-c5e6306a7144" />

Yhteys toimii Kali Linuxin ja Metasploitable 2 välillä.

## Findings
Kali Linux ja Metasploitable 2 asennettuna, koneiden välillä verkkoyhteys.

## Issues and how I resolved them
Kali Linux disk tila aluksi alhainen.
