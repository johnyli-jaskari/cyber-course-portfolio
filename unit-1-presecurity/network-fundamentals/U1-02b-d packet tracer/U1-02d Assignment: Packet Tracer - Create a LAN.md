# U1-02d Assignment: Packet Tracer - Create a LAN

**Date:** 2026-08-22

**Source:** U1-02d Assignment: Packet Tracer - Create a LAN

**Environment:** Packet tracer

## Goal
What I was trying to do.

## Steps
### Part 1: Connect Network Devices and Hosts
<img width="535" height="361" alt="image" src="https://github.com/user-attachments/assets/51e24c17-42a4-4815-b47b-b919fc02d14e" />

Käynnistin laitteet päälle laitteiden physical tab kautta. Yhdistin verkkolaitteet toisiinsa tiettyjen porttien kautta käyttäen copper straight-through kaapelia.

<img width="545" height="367" alt="image" src="https://github.com/user-attachments/assets/49a24030-eab3-45ef-be83-b13ecbae1c94" />

### Part 2: Configure Devices with IPv4 Addressing
Hain Admin PC ja Manager PC:llä IPv4-osoitteet DHCP avulla.

<img width="473" height="325" alt="image" src="https://github.com/user-attachments/assets/22318e64-b45e-4931-a4af-13eb0e455411" />   <img width="521" height="327" alt="image" src="https://github.com/user-attachments/assets/6fa97de6-7485-48b3-ba86-8980d3300764" />

Asetin printer IP-osoitteen manuaalisesti Addressing table:n mukaan.
<img width="557" height="452" alt="image" src="https://github.com/user-attachments/assets/bf8d8d7b-42f0-4c25-9d96-c302599efcb3" />

Why do you think the IPv4 addresses are different, but the subnet masks and default gateways are the same?

IPv4-osoite on yksi tapa tunnistaa jokainen verkon laite toisistaan. Aliverkon peitteet ja oletusyhdyskäytävät ovat samat, koska laitteet kuuluvat samaan paikallisverkkoon.

However, if you need to configure it with a default gateway, which value will the printer use? How can you determine this from the other devices in the network?

Voit selvittää printterin default gateway arvon tarkastelemalla default gateway arvoja, jotka tietokoneille on määritetty DHCP:n kautta. Arvon voi myös selvittää Office Routerin Ethernet-liitännän IP-osoitteen, joka on yhdistetty toimiston lähiverkkoon.IP-osoite kuvastaa oletusyhdyskäytävää.
## Findings
What I learned / what the output told me.

## Issues and how I resolved them
Problems encountered, fixes applied.

## References
Links to docs, write-ups, or related notes.
