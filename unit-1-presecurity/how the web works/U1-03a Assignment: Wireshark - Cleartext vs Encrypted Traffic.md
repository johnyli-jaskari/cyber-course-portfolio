# Assignment: Wireshark - Cleartext vs Encrypted Traffic

**Date:** 2026-08-31
**Source:** Assignment: Wireshark - Cleartext vs Encrypted Traffic
**Environment:** Kali Linux, Wireshark

## Goal
What I was trying to do.

## Steps
### Step 1 - Open the HTTP capture
Avasin Kali Linux, wireshark sekä latasin koneelle lab tiedostot.

<img width="1032" height="712" alt="image" src="https://github.com/user-attachments/assets/46e956e0-26ff-4314-9880-eb9f1bf3c699" />

Avasin HTTP lab tiedoston wiresharkissa.

<img width="1247" height="725" alt="image" src="https://github.com/user-attachments/assets/dc6819de-911b-450d-9bac-8e901f9dfc8f" />

### Step 2 - Follow the conversation
Tutkin HTTP pakettia.

<img width="832" height="727" alt="image" src="https://github.com/user-attachments/assets/551786d4-0c85-4ee7-9700-9e43f5459607" />

### Step 3 - Open the HTTPS capture
Wiresharkissa avasin seuraavaksi HTTPS lab teidoston. 

<img width="1147" height="652" alt="image" src="https://github.com/user-attachments/assets/a6cf14c6-b4c7-4345-b0ca-7b5586a70b1d" />

Käytin suodatinta ```tls```, tutkin yhtä paketeista ja vertasin tietoja aikaisempaan HTTP pakettiin.

<img width="1150" height="567" alt="image" src="https://github.com/user-attachments/assets/b2f14217-5edd-4ff0-bc9c-691657e57adc" />

<img width="835" height="752" alt="image" src="https://github.com/user-attachments/assets/c111fde3-010c-4fab-ad7e-b398a97cca29" />

### Step 4 - Complete the worksheet
Part A - the HTTP capture (U1-03a_http_login.pcap)
### 1. Find the login submission. What username and password were sent? Paste the line from the stream where you found them. <br> 
```username=anna.virtanen&password=Summer2026!&remember=on```
### 2. The login form was submitted using which HTTP method — GET or POST? (Look at the packet that carries the credentials.) <br> 
```POST```
### 3. After a successful login, the server sends back a Set-Cookie header. What is the value of the SESSIONID cookie? Why might an attacker who sees this cookie be dangerous, even without the password? <br> 
```SESSIONID=a3f9c2e7b81d4f60a5e2c9d10f4b7e88```. Hyökkääjä voi kaapata istunnon ja kirjautua sisään uhrin tilille ilman salasanaa.
### 4. The dashboard page (the final server response) reveals personal details about the user. List two pieces of sensitive information visible there.  <br>
Rooli / Työnimike: Taloushallinnon asiantuntija (Finance Administrator). Sähköpostiosoite: anna.virtanen@pohjola-logistics.local.

Part B - the HTTPS capture (U1-03a_https_login.pcap)

### 5. Apply the filter tls. Can you find the username and password anywhere in this capture? Why or why not?  <br>
Käyttäjätunnusta ja salasanaa ei voi löytää paketista. Syynä on se, että HTTPS (TLS) salaa kaiken liikenteen, joten tunnistautumistiedot ovat suojattuja eivätkä näy ulkopuolisille.

### 6. Look at the first TLS packet (the "Client Hello"). One piece of plaintext is still visible here: the name of the server the client is connecting to. What is it? (Hint: look for "Server Name" / SNI in the packet details.) <br>
lab-portal.local

### 7. Even though the contents are encrypted, name one thing an eavesdropper can still learn from the HTTPS capture (think about addresses, timing, or sizes). <br>  
IP-osoitteen.

Part C - making sense of it

### 8. In one sentence: why does the protocol choice (HTTP vs HTTPS) matter for confidentiality? <br>
HTTP siirtää kaiken datan salaamattomana tekstinä, jolloin kuka tahansa verkkoliikennettä tarkkaileva voi lukea sen suoraan, kun taas HTTPS salaa kaiken sisällön, jolloin ulkopuoliset näkevät vain kohdan, johon otetaan yhteyttä.
### 9. Name one situation in your daily life where you might be sending traffic over an untrusted network (e.g. public Wi-Fi). What protects you, and what would still be exposed? <br>
Kirjautuminen sähköpostiin kannettavalla julkisessa Wi-Fi-verkossa junassa. HTTPS-salaus (TLS) suojaa itse viestin sisällön. Ulkopuolinen näkee verkkosivuston, siirretyn datan määrän ja ajankohdan.

- What surprised you most about the difference between the two captures?
HTTP paketista pystyi lukemaan lauseita, mutta HTTPS paketin kun avasin niin erikoisesti ei saanut selvää. Opin kuitenkin myöhemmin että näiden komentojen välinen ero on aika iso, HTTPS suojaus on kattavampi.

## Findings
What I learned / what the output told me.

## Issues and how I resolved them
Problems encountered, fixes applied.
