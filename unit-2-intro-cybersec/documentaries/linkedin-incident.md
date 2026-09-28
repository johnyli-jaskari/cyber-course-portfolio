# U2-04c Assignment: Darknet Diaries Ep. 86 - The LinkedIn Incident (documentary)

**Date:** 2026-09-27 <br>
**Source:** U2-04c Assignment: Darknet Diaries Ep. 86 - The LinkedIn Incident (documentary) <br>
**Environment:** macOS

## Goal
Reflect on the LinkedIn incident and connect it to Cisco Module 4 concepts.

## Steps

## Findings
### 1. The incident in your own words
LinkedIn sivustolle murtauduttiin vuonna 2012 missä käyttäjien salasanoja varastettiin. LinkedIn ilmoitti tietomurrosta julkisuuteen niin pian kuin pystyivät ja ilmoittivat, että 6,5 miljoonan käyttäjän tunnukset kompromisoitu. Aikajanasta tekee kiinnostavan sen, että vuonna 2016 saatiin selville, että alkuperäisessä 2012 LinkedIn murrossa oli 117 miljoonan käyttäjän salasanat varastettu.

### 2. Who was affected, and how
Käyttäjät jotka käyttivät samaa salasanaa, niin heidän muut tilit olivat myös vaarassa murtautumiselle, kun LinkedIn salasanat varastettiin. Samalla suuret määrät varastettuja salasanoja meni myyntiin, jotka ovat arvokkaita.

### 3. The CIA principle
LinkedIn murtautumiseen ensisijainen kohde on luottamuksellisuus, koska käyttäjien henkilökohtaiset tunnukset pääsivät julkisuuteen ja rikollisten käsiin. Vaikka tunnusten vuotaminen on hetkellistä, kyberhyökkäykset kuten LinkedIn vaikuttaa käyttäjien luottamukseen suuriin yrityksiin ja kuinka paljon he haluavat käyttää verkkopalveluita.

### 4. The technique and the weak hashing decision
Hajautusarvo näyttää salasanat merkkijonona, joita ei pysty lukemaan suoraan tekstinä. Suolaamaton hajautusarvo on heikompi tapa säilyttää salasanat, koska se ei luo eri hajautusarvoja samaa salasanaa käyttäville ja valmiita taulukoita voi hyödyntää, joka helpottaa hyökkääjien murtautumista usealle tilille. Suolattu hajautusarvolla hyökkääjien pitää murtaa jokainen salasana erikseen. LinkedIn ei käyttänyt suolattuja hajautusarvoja, joka oli yksi pääsyy tietovuodon vakavuuteen, mikä opetti, että moderneihin käytäntöihin pitää nojata.

### 5. The slow surfacing of the data
Murtautumisen laajuus tuli selville vasta vuosia myöhemmin, joka kertoo kuinka varastettuja tietoja voi jakaa salaa. Tietoturvariski ja hyökkäys on usein tapahtunut aikaisemmin ja ollut olemassa jonkin aikaa ennen kuin se on tullut julkisuuden tietoon.

### 6. What could have helped - defending the organization

### 7. The broader lesson: credential reuse and downstream attacks
Organisaatioilla on vastuu huolehtia käyttäjiensä arkaluonteisista asioista omaamalla asiantuntijoita ja suojata järjestelmiä. Myös käyttäjillä on vastuu huolehtia ja panostaa omiin salasanoihin tekemällä niistä vahvoja eikä käyttämällä samaa salasanaa uudestaan.

### 8. Your personal takeaway
Olen käyttänyt samoja salasanoja ajoittain ja LinkedIn tietovuoto muistuttaa miksi on tärkeää käyttää vahvoja tunnuksia. Salasanahallintaa pystyy toteuttaa työkaluilla.

## Issues and how I resolved them
Problems encountered, fixes applied.


