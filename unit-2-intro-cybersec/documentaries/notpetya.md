# U2-02b Assignment: Darknet Diaries Ep. 54 - NotPetya (documentary)

**Date:** 2026-09-17 <br>
**Source:** U2-02b Assignment: Darknet Diaries Ep. 54 - NotPetya (documentary) <br>
**Environment:** macOS, GitHub

## Goal
Reflect on the NotPetya incident and connect it to Cisco Module 2 concepts.

## Steps
Katsoin videon. <br>
https://www.youtube.com/watch?v=N20q-ZMop0w

## Findings
### 1. The incident in your own words
NotPetya kyberhyökkäys kohdistui ja alkoi Ukrainasta missä haittaohjelma levisi verkossa ottamalla mimikatz työkalulla tunnukset jolla pääsee järjestelmän sisälle tai Eternal-Blue työkalun avulla ja lopuksi poistaa tiedostot käytöstä. NotPetya oli tarkoitettu vain Ukrainan alueelle, kun taas Wannacry oli tarkoitettu laajasti ja globaalilla tasolla. NotPetya kuitenkin myös levisi globaalisti.

### 2. Who was affected, and how
Yrityksiä mihin NotPetya vaikutti isosti oli muunmuassa Maersk, FedEx, Merck, Saint-Gobain, Reckitt Benckiser, Mondelez. Maailman suurin merirahtiyritys Maersk joutui ongelmiin, koska heidän koko verkkonsa kaatui, joten rahtiterminaaleissa ei tiedetä mitä laivarahti sisältää, mihin se rahti puretaan, mihin lähetetään. Globaalisti NotPetya aiheutti yli 10 miljardin dollarin vahingot.

### 3. The CIA principle - and the trick
NotPetya kohdistui CIA triad saatavuuteen (Availability), koska lukitsi käyttäjät ohjelmistosta ja ilman mahdollisuutta saada tiedot takaisin. Hyökkäys esiintyi kiristyshaittaohjelmana, mutta hyökkääjien tarkoituksena ei ollut raha vaan enemmään vahingon tekeminen.

### 4. The attack technique - initial access through a supply chain   
Hyökkääjät käyttivät MeDoc ohjelmistoa ja sen päivitys serveriä laittamalla haitallisen viruksen päivitykseen, joka lopulta saavuttaa Ukrainalaiset asiakkaat. Kun päivitys ladataan, haitallinen ohjelma pääsee tuhansiin koneisiin ja sisäverkkoihin ympäri Ukrainaa. Päivityspalvelun hyödyntäminen hyökkäyksessä on etenkin ovelaa, koska MeDc on luotettu ja tarjoaa yhteyden moniin käyttäjiin.

### 5. How it spread inside networks
NotPetya käytti Eternal-Blue ja mimikatz, joiden avulla se pääsi leviämään eri käyttöjärjestelmiin. Jos koneella on päivitykset ajan tasalla, Mimikatz keräsi kohde koneen muistista tunnukset ja käyttäisi niitä, kunnes pääsisi sisälle.

### 6. What could have helped


### 7. The broader lesson - attribution and consequences
NotPetya osoitti, että kyberaseiden hallinta digitaalisesti yhteenliitetyssä maailmassa on lähes mahdotonta ja ne aiheuttavat välimatkasta huolimatta valtavia sivullisia vahinkoja. Geopoliittisesti tapaus hämärsi sodankäynnin rajoja, sillä valtiollisen toimijan osoittaminen on hidasta, mikä mahdollistaa aggressiiviset kyberoperaatiot ilman välitöntä sotilaallista vastinetta.

### 8. Your personal takeaway
Digitaalinen sodankäynti voi aiheuttaa erittäin paljon vahinkoa lyhyessä ajassa. Sodankäynti kokonaisuudessaan on muuttunut todella paljon.

## Issues and how I resolved them
Ei ongelmia.
