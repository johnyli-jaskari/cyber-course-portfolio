# U1-02b Assignment: Packet Tracer - Configure DHCP on a Wireless Router

**Date:** 2026-08-18

**Source:** U1-02b Assignment: Packet Tracer - Configure DHCP on a Wireless Router

**Environment:** Packet Tracer

## Goal
What I was trying to do.

## Steps
# Part 1: Set up the network topology
Lisäsin kolme konetta ja yhdistin reitittimeen käyttäen straight-through kaapelia.
<img width="700" height="571" alt="image" src="https://github.com/user-attachments/assets/48a34ba4-190b-4574-b61c-23e7c64175c7" />
# Part 2: Observe the default DHCP settings
Hakemalla PC0 koneelle ip osoite DHCP avulla. Default gateway ip osoite: 192.168.0.1
<img width="917" height="312" alt="Näyttökuva 2026-08-18 183126" src="https://github.com/user-attachments/assets/cd60ab1f-8446-4f3d-bf0c-2290c35edbc3" />

PC0 koneella avasin selaimen ja laitoin URL kenttään Default gatevay ip osoitteen. Kirjauduin admin tunnuksilla sisään ja sivustolla perustietoja reitittimestä.
Löytyy langattoman reitittimen ip osoite: 192.168.0.1 , Sekä DHCP tietoja kuten DHCP-alueen alkupiste 192.168.0.100 ja asiakkaille saatavilla oleva osoitealue 192.168.0.100 - 192.168.0.149.

<img width="800" height="500" alt="image" src="https://github.com/user-attachments/assets/c50f78ba-71ec-4ed6-9282-ba423df5c179" />

# Part 3: Change the default IP address of the wireless router.
Reitittimen ip asetuksista vaihdoin ip osoitteeseen 192.168.5.1. Muutoksen myötä tuli virheviesti sivustolta.
<img width="932" height="215" alt="image" src="https://github.com/user-attachments/assets/76ff6312-647a-43bd-9f8f-edbc223d19e6" />

Vaihdoin PC0 DHCP asetuksista uuteen ip osoitteeseen.

<img width="442" height="325" alt="image" src="https://github.com/user-attachments/assets/a84a6bf9-acd9-4413-9cbf-c6a72a0a1ef9" />

Käytin ip osoitetta 192.168.5.1 selaimessa.
# Part 4: Change the default DHCP range of addresses.
Vaihdoin langattoman reitittimen asetuksista DHCP-alueen alkupisteeksi 192.168.5.126 ja maksimi käyttäjämääräksi 75.
<img width="772" height="237" alt="image" src="https://github.com/user-attachments/assets/35ef0614-0de0-45ab-9051-bc0f285dc998" />

## Findings
What I learned / what the output told me.

## Issues and how I resolved them
Problems encountered, fixes applied.

## References
Links to docs, write-ups, or related notes.
