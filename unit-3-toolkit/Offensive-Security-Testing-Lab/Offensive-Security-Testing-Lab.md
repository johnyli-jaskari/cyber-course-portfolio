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

<img width="822" height="612" alt="image" src="https://github.com/user-attachments/assets/57319aab-0ea9-4b5f-9106-874c2c7e8cf7" />

### Create the Kali VM

Kali Linux virtuaalikoneen tiedoston lataus sekä asennus VMware:ssa.

<img width="700" height="501" alt="image" src="https://github.com/user-attachments/assets/196864e4-f099-41a8-b94c-ec343cfc771b" />

Valitsin Vmwaressa Kali ISO tiedoston ja asetin oikeat laitteistoasetukset.  

<img width="1287" height="752" alt="image" src="https://github.com/user-attachments/assets/8c03ab3e-ee89-4a3a-b07f-0aa9ff89a157" />

<img width="1037" height="765" alt="image" src="https://github.com/user-attachments/assets/3d89439c-8c0f-4d32-84d7-a8c20ae941ab" />

Käynnistin Kali Linux ja tein asennuksen loppuun. 

<img width="857" height="652" alt="image" src="https://github.com/user-attachments/assets/350f6ab6-48ea-43b1-a7af-7a60667ead7f" />

### Import Metasploitable 2

Metasploitable 2 virtuaalikoneen asennus. Tiedoston lataus, purkaminen ja VMwaressa avaaminen.

<img width="1847" height="405" alt="image" src="https://github.com/user-attachments/assets/2938c4ac-626b-483d-a7ba-1b65e931de33" />

Asetin network adapter Host-Only tilaan

<img width="1196" height="926" alt="image" src="https://github.com/user-attachments/assets/30ee885e-cde0-45aa-b26c-eb9ad9c439c6" />

### Lock down the network

Kali Linux käyttää Host-only ja NAT Network Adaptereita. Metasploitable 2 on käytössä vain yksi Network Adapter Host-only. Molempien Host-Only verkkosovittimet ovat samassa verkossa VMnet1.

<img width="892" height="200" alt="image" src="https://github.com/user-attachments/assets/825a7887-045f-4f43-9dd0-f9e7148a462f" />

### Verify isolation

Kokeilin yhdistää internettiin Metasploitable 2 virtuaalikoneesta.

<img width="810" height="250" alt="image" src="https://github.com/user-attachments/assets/61196077-ae11-44d9-85c0-a7752d3f4d50" />

Kali Linux yhteyden varmistaminen Metasploitable 2 virtuaalikoneeseen. Ensin komento ```ifconfig``` Metasploitable VM:ssä.

<img width="822" height="522" alt="image" src="https://github.com/user-attachments/assets/2d86bb2b-6c8c-46e2-8728-09d3b70a228f" />

Käytin Metasploitable eth0 IP:tä Kali Linux terminaalissa, komento ```ping -c 4 192.168.163.128```

<img width="912" height="352" alt="image" src="https://github.com/user-attachments/assets/17192e97-69db-4629-8b6a-c5e6306a7144" />

Yhteys toimii Kali Linuxin ja Metasploitable 2 välillä.

## Findings
Kali Linux ja Metasploitable 2 asennettuna, koneiden välillä verkkoyhteys.

## Issues and how I resolved them
Kali Linux disk tila aluksi alhainen.
