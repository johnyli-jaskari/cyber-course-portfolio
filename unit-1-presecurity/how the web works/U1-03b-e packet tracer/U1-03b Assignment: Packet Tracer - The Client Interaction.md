# U1-03b Assignment: Packet Tracer - The Client Interaction

**Date:** 2026-08-24 <br>
**Source:** U1-03b Assignment: Packet Tracer - The Client Interaction <br>
**Environment:** Packet Tracer

## Goal
Tutkia PC:n ja palvelimen välistä vuorovaikutusta, kun PC hakee verkkosivua.

## Steps
### Part 1: Enter simulation mode.
Vaihdoin Realtime modesta Simulation modeen
<img width="700" height="470" alt="image" src="https://github.com/user-attachments/assets/caef0519-35f9-43f5-a547-149f0e7dbebd" />
### Part 2: Set Event List Filters
Simulation paneelissa poistin kaikki Event List Filters valinnat painamalla Show All/None. Valitsin Edit Filters kohdasta vain DNS ja HTTP.

<img width="456" height="552" alt="image" src="https://github.com/user-attachments/assets/3861c8f3-7d3d-4b57-9278-520f19e9ab55" />

### Part 3: Request a web page from the PC
Avasin PC:llä verkkoselaimen ja laitoin hakukenttään www.example.com. Pienensin ikkunan.
<img width="591" height="185" alt="image" src="https://github.com/user-attachments/assets/b3dad7ab-b3a9-4311-8388-75d1faa8fcad" />
### Part 4: Run the simulation
Käynnistin simulaation PC:n ja palvelimen välillä.

<img width="700" height="450" alt="image" src="https://github.com/user-attachments/assets/759e88cb-e25b-4ba7-97df-e85185e0a921" />

### Part 5: Access a specific PDU
Simulaation suoritettua avasin saman verkkoselaimen PC:llä ja ilmestyi verkkosivu.
<img width="667" height="366" alt="image" src="https://github.com/user-attachments/assets/c46d7779-2c23-405a-8312-26bd0fe9477a" />

Tutkin enemmän suoritetusta simulaatiosta. Avasin Simulation Panel Event List ensimmäisen tapahtuman PDU tiedot.

<img width="626" height="388" alt="image" src="https://github.com/user-attachments/assets/a9210677-322c-494d-97a8-d370c485cd0e" />

### Part 6: Examine the contents of the PDU Information Window
PDU sisältää OSI model välilehden sekä inbound ja/tai outbound välilehden. OSI Model sisältää eri kerroksia mitkä kuvaavat tiedon kulkua ja sen eri vaiheita. Vaiheita pystyy käydä yksitellen läpi. Inbound ja Outbound osiot sisältää esimerkiksi lähettäjän ja vastaanottajan IP-osoitteet, MAC-osoitteet. Kävin läpi simulaation eri tapahtumien PDU:t ja niiden eri layerit saadakseni yleiskuvan miten tehtävässä PC saa verkkosivun auki.
## Findings
Opin, että DNS ja HTTP valittiin, koska DNS selvittää palvelimen IP-osoitteen ja HTTP mahdollistaa verkkosivun hakemisen palvelimelta.

## Issues and how I resolved them
Aluksi PDU tietoja oli hankala tulkita.
