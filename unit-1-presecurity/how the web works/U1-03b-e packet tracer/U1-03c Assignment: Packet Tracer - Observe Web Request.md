# U1-03c Assignment: Packet Tracer - Observe Web Request

**Date:** 2026-08-24

**Source:** U1-03c Assignment: Packet Tracer - Observe Web Request

**Environment:** Packet Tracer

## Goal
Tarkastella simulaation avulla, miten tietokoneelta verkkopalvelun pyytäminen verkkopalvelimelle muodostaa TCP-liikennettä ja kasvattaa ohjausliikenteen määrää.
## Steps
### Part 1: Verify connectivity to the web server.
<img width="857" height="310" alt="image" src="https://github.com/user-attachments/assets/6407ab50-6c7b-40d7-91af-4cb64fafc549" />

Käytin External Client Command Promt:ssa ```ping ciscolearn.web.com``` 
<img width="666" height="386" alt="image" src="https://github.com/user-attachments/assets/372b0f34-2160-4f35-bd68-a5b85134c556" />

### Part 2: Connect to the web server
External Client PC:llä avasin verkkoselaimen ja hain hakusanalla ciscolearn.web.com

<img width="522" height="625" alt="image" src="https://github.com/user-attachments/assets/2695a501-4ea9-4172-9d84-fdc841295b5b" /> <img width="552" height="651" alt="image" src="https://github.com/user-attachments/assets/092b8b04-46f8-49e8-bdeb-4230d3fc78d8" />


Jätin ikkunan auki.
### Part 3: View the HTML code
Avasin ciscolearn.web.com palvelimen joka luo External Client verkkosivun. Menin palvelimen Services osioon ja HTTP välilehteen, index.html tiedosto ja sen muokkaukseen. Vertasin palvelimen html koodia ja External Client verkkosivua. Sisältö on sama.

<img width="1440" height="821" alt="image" src="https://github.com/user-attachments/assets/ab63ff88-a352-4d47-937c-7d1708cc3943" />

### Part 4: Observe traffic between the client and the web server
Simulation mode. Valitsin HTTP ja TCP Filters.

<img width="250" height="500" alt="image" src="https://github.com/user-attachments/assets/25796ca7-c3f4-4691-ace7-4237e4c9d390" />

Tein uuden Complex PDU:n. Asetin External Client PC:n lähteeksi ja ciscolearn.web.com kohteeksi.

<img width="300" height="437" alt="image" src="https://github.com/user-attachments/assets/7e18e579-9044-46a5-81c0-164236b547ed" />

Aloitin simulaation. HTTP käyttää TCP protokollaa, joten yhteyden muodostaminen ja pakettien vastaanoton kuittaukset kasvattaa ohjausliikenteen määrää mikä lisää verkkoliikennettä paljon. 
<img width="1782" height="750" alt="image" src="https://github.com/user-attachments/assets/844a5241-dc56-4fee-ac05-2a48a0cdde01" />

## Findings
Simulaation tuloksista kävi ilmi, että External Client koneen ja verkkopalvelimen välisessä HTTP-liikenteessä kulkee runsaasti paketteja.

## Issues and how I resolved them
Verkkoliikenteen suuren määrän hahmottaminen tapahtumaluettelosta vaati tarkastelua.
