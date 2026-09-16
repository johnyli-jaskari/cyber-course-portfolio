# U2-01b Assignment: The SolarWinds Hack (documentary)

**Date:** 2026-09-16 <br>
**Source:** U2-01b Assignment: The SolarWinds Hack (documentary) <br>
**Environment:** Moodle

## Goal
Reflect on the SolarWinds incident and connect it to Cisco Module 1 concepts.

## Steps
Katsoin videon. <br>
https://www.youtube.com/watch?v=Kf7Motm36Go&t=5s

## Findings
### 1. The incident in your own words
Hyökkääjät murtautuivat SolarWinds-yhtiön järjestelmään ja ujuttivat haittaohjelman sen suosittuun Orion-ohjelmistopäivitykseen. Tämän seurauksena yhtiö jakoi tietämättään saastuneen, digitaalisesti allekirjoitetun päivityksen suoraan tuhansille asiakkailleen

### 2. Who was affected, and how?
Noin 18 000 organisaatiota latasi saastuneen päivityksen, joista hyökkääjät valikoivat noin 50 korkean profiilin kohdetta syvempää vakoilua varten. Uhreihin kuului muun muassa Yhdysvaltain valtiovarain- ja puolustusministeriöitä sekä suuria teknologiajättejä, kuten Microsoft. Tapaus aiheutti valtavat rahalliset vahingot, kiristi Yhdysvaltain ja Venäjän välisiä suhteita.

### 3. The CIA principle
Iskun pääkohteena oli luottamuksellisuus (Confidentiality), sillä kyseessä oli puhtaasti digitaalinen vakoiluoperaatio salaisen tiedon lukemiseksi. Eheys (Integrity) oli kuitenkin hyökkäyksen toteutustapa, sillä hyökkääjät peukaloivat SolarWindsin lähdekoodia ja rakennusjärjestelmää.

### 4. The attack technique - what made this one different?
Toimitusketjuhyökkäyksessä rikollinen ei iske suoraan kohteeseen, vaan murtautuu sen käyttämään heikompaan ja luotettuun kolmannen osapuolen toimittajaan. Yhdellä ainoalla murrolla hyökkääjä voi saada pääsyn satoihin tai tuhansiin korkean turvatason organisaatioihin samanaikaisesti.

### 5. How was it discovered?
Hyökkäystä ei havaittu automaattisilla hälytyksillä tai valtion tiedustelun toimesta, vaan tietoturvayhtiö FireEye huomasi epäilyttävän kirjautumisyrityksen omassa kaksivaiheisessa tunnistautumisessaan. Tutkiessaan tätä pientä poikkeamaa FireEye huomasi työkalujensa päätyneen vieraasiin käsiin ja jäljitti murron SolarWindsin päivitykseen. Tämä osoittaa, että suuret kyberhyökkäykset paljastuvat usein asiantuntijoiden tarkkuuden ja pienten poikkeamien seurannan kautta.


### 6. What could have helped
Jos ohjelmistopäivityksen koodi olisi käännetty ja verrattu automaattisesti kahdessa erillisessä ympäristössä, järjestelmä olisi havainnut haittaohjelman tekemät koodimuutokset. Tämä olisi pysäyttänyt saastuneen päivityksen jakelun asiakkaille ennen sen julkaisua.

### 7. The broader lesson
Tapaus opetti tietoturva-alalle, ettei edes tunnettujen ja luotettavien organisaatioiden digitaalisiin päivityksiin voi luottaa sokeasti. Automaattisten päivitysten jakelukanavasta muodostui hyökkäysase, mikä pakotti organisaatiot arvioimaan uudelleen kolmansien osapuolten mukanaan tuomia riskejä.

### 8. Your personal takeaway
Tämä muuttaa suhtautumista arjessa asennettavaan ja päivitettävään sisältöön. Mikä tahansa ohjelmisto voi periaatteessa olla kompromisoitu.

## Issues and how I resolved them
--
