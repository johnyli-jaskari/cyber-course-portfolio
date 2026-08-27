# U1-03e Assignment: Packet Tracer - Use Telnet and SSH

**Date:** 2026-08-26 <br>
**Source:** U1-03e Assignment: Packet Tracer - Use Telnet and SSH <br>
**Environment:** Packet Tracer

## Goal
What I was trying to do.

## Steps
### Part 1: Verify Connectivity

<img width="700" height="300" alt="image" src="https://github.com/user-attachments/assets/0b5d0f17-7383-4063-b1e8-16f4aac2e347" />

Avasin komentokehotteen ja käytin```ipconfig``` komentoa tarkistaakseni DHCP:n antaman IP-osoitteen molemmilta tietokoneilta PC0 ja PC1.

<img width="573" height="515" alt="image" src="https://github.com/user-attachments/assets/d26a541d-5153-45ee-949c-b2a242043180" />  <img width="582" height="512" alt="image" src="https://github.com/user-attachments/assets/9d4295a9-84c1-41d9-85bd-673f009da657" />

Varmistin yhteyden reititn HQ:n ja tietokoneiden välillä, käytin komentoa ```ping 64.100.1.1```

<img width="561" height="287" alt="image" src="https://github.com/user-attachments/assets/a9ef89c3-1eba-483b-9d64-76a77048fdc9" /> <img width="570" height="288" alt="image" src="https://github.com/user-attachments/assets/ca8cb788-613e-45a2-b4b6-9d754aa655b4" />

### Part 2: Access a Remote Device
Yritin ottaa etähallintayhteyden HQ reitittimeen komennolla ```telnet 64.100.1.1``` , mutta komento ei onnistunut.

<img width="727" height="143" alt="image" src="https://github.com/user-attachments/assets/a43e0aca-c6a5-42b1-b2e7-00c97d9109f8" />

Yritin seuraavaksi komentoa ```ssh -l admin 64.100.1.1``` ja salasanaa class , jonka avulla sain pääsyn HQ reitittimeen.

<img width="727" height="261" alt="image" src="https://github.com/user-attachments/assets/f25e9a13-cf1d-43e7-8b87-e27f59ab22c2" />

What is prompt after accessing the router successfully via SSH? <br>
HQ#

## Findings
What I learned / what the output told me.

## Issues and how I resolved them
Problems encountered, fixes applied.
