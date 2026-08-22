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

Asetin tulostimen IP-osoitteen manuaalisesti Addressing table:n mukaan.
<img width="557" height="452" alt="image" src="https://github.com/user-attachments/assets/bf8d8d7b-42f0-4c25-9d96-c302599efcb3" />

Why do you think the IPv4 addresses are different, but the subnet masks and default gateways are the same?

IPv4-osoite on yksi tapa tunnistaa jokainen verkon laite toisistaan. Aliverkon peitteet ja oletusyhdyskäytävät ovat samat, koska laitteet kuuluvat samaan paikallisverkkoon.

However, if you need to configure it with a default gateway, which value will the printer use? How can you determine this from the other devices in the network?

Voit selvittää tulostimen default gateway arvon tarkastelemalla default gateway arvoja, jotka tietokoneille on määritetty DHCP:n kautta. Arvon voi myös saada selvittämällä Office Routerin Ethernet-liitännän IP-osoitteen, joka on yhdistetty toimiston lähiverkkoon. IP-osoite kuvastaa oletusyhdyskäytävää.
### Part 3: Verify the End Device Configuration and Connectivity
Tarkistin tietokoneiden IP-osoite asetukset. Admin PC:llä avasin Command Promt.

Käytin komentoa ping sekä tulostimen IP-osoitetta, ```ping 192.168.1.100```

<img width="512" height="381" alt="image" src="https://github.com/user-attachments/assets/072f466a-76b8-4967-9ba2-0c3ab8a44505" />

Ping komento ja Manager PC:n IP-osoite, ```ping 192.18.1.3```

<img width="527" height="291" alt="image" src="https://github.com/user-attachments/assets/ef19ce0c-3c24-411b-9069-32d7508e61a3" />

Ping komennot olivat onnistuneita, joka tarkoittaa, että tietokoneet ja tulostin ovat päällä ja oikein yhdistetty sekä määritetty.

Menin sekä Admin PC:n ja Manager PC:n selaimeen ja käytin verkkopalvelimen IP-osoitetta. 
<img width="456" height="321" alt="image" src="https://github.com/user-attachments/assets/d73246cf-1e46-404d-b8ff-81edf3087d53" /> <img width="457" height="321" alt="image" src="https://github.com/user-attachments/assets/e9d99206-7bb5-45f0-9b3b-6e6e98b19510" />

Pääsin verkkosivulle myös verkkopalvelimen URL-osoitteen kanssa.
### Part 4: Use Networking Commands to View Host Information
```ipconfig```

<img width="702" height="487" alt="image" src="https://github.com/user-attachments/assets/b1fe0f54-c28e-44a1-ae81-e85dfa8ca959" />

```ipconfig /all```

<img width="698" height="688" alt="image" src="https://github.com/user-attachments/assets/c8c13a52-283c-42d8-8bb0-5bf79c2a7fda" />


## Findings
What I learned / what the output told me.

## Issues and how I resolved them
Problems encountered, fixes applied.

## References
Links to docs, write-ups, or related notes.
