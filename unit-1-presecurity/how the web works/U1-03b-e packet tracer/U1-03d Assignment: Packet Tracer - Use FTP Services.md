# U1-03d Assignment: Packet Tracer - Use FTP Services

**Date:** 2026-08-26 <br>
**Source:** U1-03d Assignment: Packet Tracer - Use FTP Services <br>
**Environment:** Packet Tracer

## Goal
What I was trying to do.

## Steps
### Part 1: Upload a file to an FTP server.
<img width="1030" height="221" alt="image" src="https://github.com/user-attachments/assets/83a39279-efd9-41e4-b5ac-5b9a9b480acc" />

Avasin PC:n Command Promt ja käytin komentoa ```?``` löytääkseni saatavilla olevat komennot.

<img width="562" height="552" alt="image" src="https://github.com/user-attachments/assets/9b01fe92-5d65-4f5a-a23d-9d38ac1c2e56" />

```dir```  komennon avulla löydän PC:llä olevat tiedostot. Löytyi sampleFile.txt tiedosto.

<img width="636" height="148" alt="image" src="https://github.com/user-attachments/assets/6703de5f-80e9-4cd7-9a7e-e84cef4215d0" />

Yhdistin FTP palvelimelle, ```ftp 209.165.200.226``` ja syötin käyttäjänimeksi student sekä salasanaksi class. ftp>.

<img width="652" height="197" alt="image" src="https://github.com/user-attachments/assets/f30b347c-a256-4cce-b816-522dfc2d7f46" />

Syötin komennon ```?``` löytääkseni saatavilla olevat komennot ftp asiakasohjelmassa.

<img width="195" height="182" alt="image" src="https://github.com/user-attachments/assets/4d30de52-6a8e-4e39-8b4c-566b0aacee3b" />

```dir``` tiedostojen löytämiseen palvelimella.

<img width="500" height="500" alt="image" src="https://github.com/user-attachments/assets/ef86da75-e1d5-4eeb-9285-876b8838c9de" />

Tiedoston lähettäminen FTP palvelimelle komennolla ```put sampleFile.txt```. Käytin ```dir``` komentoa, jotta voi tarkistaa tiedoston olevan siirtynyt FTP palvelimelle.

<img width="550" height="700" alt="image" src="https://github.com/user-attachments/assets/9d37e7ca-1730-42ff-84e1-b043b5a2160f" />

### Part 2: Download a file from an FTP server.
Vaihdoin tiedoston sampleFile.txt nimen uudeksi sampleFile_FTP.txt. Komennolla ```rename sampleFile.txt sampleFile_FTP.txt```. Lopuksi ```dir``` komento tarkistaa tiedoston nimen muutoksen.

<img width="672" height="780" alt="image" src="https://github.com/user-attachments/assets/4e584e45-9088-4b02-a601-4cf099ce8a92" />

## Findings
What I learned / what the output told me.

## Issues and how I resolved them
Problems encountered, fixes applied.

## References
Links to docs, write-ups, or related notes.
