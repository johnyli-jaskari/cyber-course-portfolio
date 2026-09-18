# U2-03c Assignment: Darknet Diaries Ep. 87 - Guild of the Grumpy Old Hackers (documentary)

**Date:** 2026-09-18 <br>
**Source:** U2-03c Assignment: Darknet Diaries Ep. 87 - Guild of the Grumpy Old Hackers (documentary) <br>
**Environment:** macOS, GitHub

## Goal
Reflect on the Twitter incident and connect it to Cisco Module 3 concepts.

## Steps
Katsoin videon. <br>
https://www.youtube.com/watch?v=-j0kWlphD4w&t=1s

## Findings
### 1. The incident in your own words
Hollantilaiset IT-ammattilaiset ja ettiset tietoturvatutkijat murtautuivat Yhdysvaltain silloisen presidenttiehdokkaan Donald Trumpin Twitter-tilille vuonna 2016. Hyökkääjät hyödynsivät tilille kirjautumisessa yksinkertaista salasanaa yourefired, jonka he olivat hankkineet vuoden 2012 LinkedIn-tietomurron vuodetusta tietokannasta.

### 2. The credential reuse trap
Tunnusten uudelleenkäyttö tarkoittaa saman käyttäjätunnuksen ja salasanan yhdistelmän käyttämistä useissa eri verkkopalveluissa. Tämä tekee yksittäisestä tietomurrosta pitkäaikaisen riskin, sillä hyökkääjät voivat kokeilla vuodettuja tunnuksia täysin erillisiin palveluihin vielä vuosienkin päästä. Hyökkäys onnistui ainoastaan siksi, että kohde oli käyttänyt vuonna 2012 LinkedIn-palvelussa ollutta salasanaa myös Twitter-tilillään vuonna 2016.

### 3. The CIA principle
Hyökkäys kohdistui ensisijaisesti luottamuksellisuuteen (confidentiality), sillä hyökkääjät pääsivät käsiksi tietyn henkilön yksityiseen tiliin ja sen sisältämiin tietoihin. Samalla kärsi myös eheys (integrity), kun luvaton pääsy mahdollisti kyvyn esiintyä tilin omistajana ja julkaista viestejä uhrin nimissä. Kohde menetti tilapäisesti yksityisyytensä ja hallinnan omasta digitaalisesta identiteetistään.

### 4. The technique - credential stuffing at a personal scale
Osoitteiden ja salasanojen massakokeilu on hyökkäystekniikka, jossa tietomurroissa vuodettuja käyttäjätunnuksia ja salasanoja syötetään automaattisesti eri verkkopalveluiden kirjautumissivulle. Se on yksi yleisimmistä hyökkäystavoista, koska automaatio tekee siitä nopeaa, toteuttavissa laajassa mittakaavassa sekä toimii, kun ihmiset käyttävät samoja tunnuksia eri palveluissa.

### 5. Why the target was so high-value - but the technique was so simple
Hyökkäyksen onnistuminen helpolla tavalla osoittaa, että vahvinkaan tekninen suojaus ei auta, jos yksilön omat tietoturvavalinnat pettävät. Mitä merkittävämmässä asemassa henkilö on, sitä suuremman riskin hänen yksinkertaiset virheensä muodostavat.

### 6. What could have helped - defenses an individual can implement
Hyökkäyksen olisivat estäneet monivaiheinen tunnistautuminen ja yksilöllisten salasanojen käyttö salasananhallintaohjelmalla. Monivaiheinen tunnistautuminen vaatii kirjautumiseen salasanan lisäksi erillisen vahvistuskoodin. Salasananhallintaohjelma puolestaan mahdollistaa jokaiselle palvelulle uniikin ja vahvan salasanan ilman toistuvuutta.

### 7. The broader lesson - leaked data is forever
Kuvio osoittaa, että vuodettujen tietojen elinkaari on käytännössä ikuinen ja voi vuosia myöhemmin aiheuttaa ongelmia. Pelkkä reagointi tietomurron tapahduttua ei riitä, sillä käyttäjä ei useinkaan tiedä oman salasanansa vuotaneen ennen kuin on jo liian myöhäistä.

### 8. Your personal takeaway - and a small action
Olen aiemmin käyttänyt samaa salasanaa. Tehtävää tehdessä kävin tarkastamassa HaveIBeenPwned. Aion vaihtaa salasanan parempaan ja uniikkiin versioon.

## Issues and how I resolved them
Ei ongelmia.
