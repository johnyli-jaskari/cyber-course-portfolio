# U1-03c Assignment: Packet Tracer - Observe Web Request

**Date:** 2026-08-24

**Source:** U1-03c Assignment: Packet Tracer - Observe Web Request

**Environment:** Packet Tracer

## Goal
What I was trying to do.

## Steps
### Part 1: Verify connectivity to the web server.
<img width="857" height="310" alt="image" src="https://github.com/user-attachments/assets/6407ab50-6c7b-40d7-91af-4cb64fafc549" />

Käytin External Client Command Promt:ssa ```ping ciscolearn.web.com``` 
<img width="666" height="386" alt="image" src="https://github.com/user-attachments/assets/372b0f34-2160-4f35-bd68-a5b85134c556" />

### Part 2: Connect to the web server
External Client PC:llä avasin verkkoselaimen ja hain hakusanalla ciscolearn.web.com

<img width="522" height="625" alt="image" src="https://github.com/user-attachments/assets/2695a501-4ea9-4172-9d84-fdc841295b5b" />

Jätin ikkunan auki.
### Part 3: View the HTML code
Avasin ciscolearn.web.com palvelimen joka luo External Client verkkosivun. Menin palvelimen Services osioon ja HTTP välilehteen, index.html tiedosto ja sen muokkaukseen. Vertasin palvelimen html koodia ja External Client verkkosivua. Sisältö on sama.

<img width="1440" height="821" alt="image" src="https://github.com/user-attachments/assets/ab63ff88-a352-4d47-937c-7d1708cc3943" />

### Part 4: Observe traffic between the client and the web server
Simulation mode. Valitsin HTTP ja TCP Filters.

<img width="250" height="500" alt="image" src="https://github.com/user-attachments/assets/25796ca7-c3f4-4691-ace7-4237e4c9d390" />

Tein uuden Complex PDU:n. Asetin External CLient PC:n lähteeksi ja ciscolearn.web.com kohteeksi.

<img width="300" height="437" alt="image" src="https://github.com/user-attachments/assets/7e18e579-9044-46a5-81c0-164236b547ed" />

Aloitin simulaation. HTTP käyttää TCP:tä, joten yhteyden muodostaminen ja pakettien vastaanoton kuittaukset lisäävät ohjauspaketteja ja samalla verkkoliikennettä paljon. 
<img width="1732" height="752" alt="image" src="https://github.com/user-attachments/assets/cf0ed538-c1c5-4b46-a86b-e51f498d6b90" />


## Findings
What I learned / what the output told me.

## Issues and how I resolved them
Problems encountered, fixes applied.

## References
Links to docs, write-ups, or related notes.

