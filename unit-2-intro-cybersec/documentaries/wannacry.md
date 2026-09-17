# U2-01c Assignment: WannaCry (documentary)

**Date:** 2026-09-16   <br>
**Source:** U2-01c Assignment: WannaCry (documentary)   <br>
**Environment:** macOS, Moodle

## Goal
Pohtia ja laatia ytimekäs tietoturva-analyysi vuoden 2017 WannaCry-kiristyshaittaohjelmahyökkäyksestä.

## Steps
Katsoin videon. <br>
https://www.youtube.com/watch?v=PKHH_gvJ_hA&t=1s

## Findings
### 1. The incident in your own words
WannaCry oli toukokuussa 2017 käynnistynyt maailmanlaajuinen kyberhyökkäys, jossa kiristyshaittaohjelma (ransomware) kryptasi eli lukitsi uhrien tiedostoja ja vaati Bitcoin-lunnaita niiden avaamisesta. Hyökkäys levisi poikkeuksellisen nopeasti, vaikuttaen yli 150 maahan ja saastutti noin 230 tuhatta konetta. Lopulta se vaikutti kriittisesti toimijoihin ympäri maailmaa, mukaan lukien sairaaloita, pankkeja, liikenneyhtiöitä ja valtionvirastoja.

### 2. Who was affected, and how
Hyökkäyksen uhreiksi joutuivat muun muassa Ison-Britannian kansallinen terveydenhuoltojärjestelmä NHS sekä useat muut yritykset ja julkisen sektorin toimijat. Teknisien vaurioiden lisäksi hyökkäyksellä oli vakavia inhimillisiä seurauksia, kun sairaaloissa jouduttiin perumaan leikkauksia ja käännyttämään potilaita. Tämä teki hyökkäyksestä erityisen vaarallisen, sillä se vaaransi suoraan ihmishenkiä eikä vain liike-elämän toimintaa.

### 3. The CIA principle
Hyökkäys kohdistui suorimmin saatavuuteen (Availability), sillä kiristyshaittaohjelma lukitsi tiedostot ja järjestelmät estäen niiden käytön kokonaan. Tämän lisäksi myös eheys (Integrity) kärsi, koska koodi muutti järjestelmissä olevia tiedostoja luvattomasti kryptoamalla ne ilman käyttäjän suostumusta.

### 4. The attack technique - ransomware and "wormable" exploits
Kiristyshaittaohjelma (ransomware) lukitsee uhrin tiedostot tai järjestelmät salaamalla ne ja vaatii lunnaita niiden avaamisesta. Tavanomainen kiristyshaittaohjelma vaatii leväkseen käyttäjän virheen, kuten haitallisen sähköpostiliitteen avaamisen tai linkin klikkaamisen. WannaCrysta teki poikkeuksellisen vaarallisen sen, että se se hyödynsi EternalBlue-haavoittuvuutta ja pystyi leviämään verkoissa täysin automaattisesti tietokoneelta toiselle ilman minkäänlaista käyttäjän myötävaikutusta. 

### 5. How was it discovered and how was it stopped
Hyökkäys havaittiin, kun sairaaloiden ja yritysten näytöille ilmestyi punaisia kiristysilmoituksia ja järjestelmät olivat käyttökelvottomia. Leviämisen pysäytti tutkija, joka löysi koodista rekisteröimättömän verkkotunnuksen ja rekisteröi sen itselleen. Tämä verkkotunnus toimi tahattomana tappokytkimenä (kill switch), sillä haittaohjelma oli ohjelmoitu lopettamaan leviämisensä sivuston ollessa pystyssä. Tapaus osoittaa, miten kyberhyökkäyksiä voidaan joskus pysäyttää lähes vahingossa yksinkertaisella oivalluksella.

### 6. What could have helped - the patch question
Yksi keskeinen syy miksi monet organisaatiot jättivät Microsoftin julkaiseman päivityksen asentamatta, oli koska ne nojasivat vanhentuneisiin järjestelmiin kuten Windows XP, joille ei enää tarjottu tavanomaisia päivityksiä. Ilman päivitystäkin vahinkoja olisi voitu rajoittaa verkon segmentoinnilla, eli sulkemalla haittaohjelman käyttämä SMB-portti (445) sisäverkon laitteiden väliltä. Tämä olisi estänyt matoa leviämästä automaattisesti tietokoneelta toiselle samassa verkossa.

### 7. The broader lesson
WannaCry opetti, että järjestelmien nopea päivittäminen on kriittisen tärkeää ja sen laiminlyönti kriittisessä infrastruktuurissa voi vaarantaa jopa ihmishenkiä. Se paljasti myös terveydenhuollon pahan haavoittuvuuden vanhentuneiden järjestelmien vuoksi. Lisäksi hyökkäys osoitti valtioiden kyberaseiden vaarat, kun NSA:lta vuotanut EternalBlue-työkalu päätyi verkkorikollisten käsiin.

### 8. Your personal takeaway
Ymmärsin miten haavoittuvia arjen tärkeät palvelut ovat ja kuinka välttämättömiä eristetyt varmuuskopiot ovat toiminnan turvaamiseksi.

## Issues and how I resolved them
Ei ongelmia.

