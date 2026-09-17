# U2-02b Assignment: Darknet Diaries Ep. 54 - NotPetya (documentary)

**Date:** 2026-09-17 <br>
**Source:** U2-02b Assignment: Darknet Diaries Ep. 54 - NotPetya (documentary) <br>
**Environment:** macOS, Moodle

## Goal
What I was trying to do.

## Steps
Katsoin videon. <br>
https://www.youtube.com/watch?v=N20q-ZMop0w

## Findings
### 1. The incident in your own words
NotPetya oli kesäkuussa 2017 käynnistynyt tuhovoimainen kyberhyökkäys, joka alkoi Ukrainasta tietyssä kirjanpito-ohjelmistossa olleen saastuneen päivityksen kautta. Toisin kuin WannaCry, joka levisi satunnaisesti ympäri maailmaa, NotPetya oli maantieteellisesti tarkkaan kohdennettu isku Ukrainaan, joka kuitenkin levisi nopeasti Ukrainan rajojen ulkopuolelle. Hyökkäyksen teki poikkeukselliseksi sen pysäyttämätön nopeus sisäverkoissa sekä se, että kerran saastuneita järjestelmiä ei voitu enää palauttaa toimintaan.

### 2. Who was affected, and how
NotPetya vaikutti ukrainalaisen Oschadbankin ohella lukuisiin maailmanlaajuisesti suuriin yrityksiin, kuten Maersk, FedEx, Merck, Saint-Gobain, Reckitt Benckiser, Mondelez. Esimerkiksi merirahtijätti Maersk menetti koko maailmanlaajuisen IT-infrastruktuurinsa minuuteissa, mikä pysäytti satamaterminaalit, rahtiseurannan viikoiksi ja lopulta koko IT-järjestelmän korvaaminen. Yhteensä hyökkäys aiheutti globaalisesti arviolta yli 10 miljardin dollarin vahingot, mikä tekee siitä yhden historian kalleimmista kyberiskuista. 

### 3. The CIA principle - and the trick
NotPetya kohdistui ennen kaikkea saatavuuteen (Availability) ja myös eheyteen (Integrity) estämällä pääsyn järjestelmiin ja tuhosi tiedostot ja kiintolevyt käyttökelvottomiksi. Vaikka se tekeytyi lunnasohjelmaksi, saastuneet tiedostot tuhottiin lopullisesti, eikä palautusavainta ollut olemassakaan. Tämä valekiristys oli hämäystä, jolla peiteltiin valtiollista sabotaasia ja saatiin uhrit tuhlaamaan aikaa maksamiseen palauttamisen sijaan.

### 4. The attack technique - initial access through a supply chain
Hyökkääjät murtautuivat ukrainalaisen M.E.Doc-kirjanpito-ohjelmiston päivityspalvelimelle ja saastuttivat sen viruksella. Kun sovellusta käyttäneet yritykset latasivat automaattisen ja luotetun päivityksen, haittaohjelma pääsi suoraan heidän sisäverkkoihinsa. Ohjelmiston päivitysmekanismin saastuttaminen on poikkeuksellisen tehokasta, koska se kiertää perinteiset suojaukset käyttämällä organisaation olemassa olevaa viestintään ja suorittaa haitallisen koodin järjestelmänvalvojan oikeuksin.

### 5. How it spread inside networks
Päästyään verkon sisälle NotPetya käytti EternalBlue-haavoittuvuutta levitäkseen automaattisesti päivittämättömiin Windows-järjestelmiin. Lisäksi se eristi muistista käyttäjätunnuksia ja salasanatiivisteitä Mimikatz-työkalun avulla, mikä mahdollisti tunnistetietojen kaappauksen. Näitä kaapattuja tunnuksia hyödyntäen haittaohjelma liikkui verkoissa saastuttaen myös täysin päivitetyt laitteet.

### 6. What could have helped
Yrityksessä verkon tiukka segmentointi olisi pienentänyt vahinkoja merkittävästi. Eriyttämällä verkon osat toisistaan ja rajoittamalla verkkolohkojen välistä liikennettä haittaohjelman liikkuminen olisi pysähtynyt. Tämä olisi eristänyt tartunnan vain ensimmäisiin saastuneisiin laitteisiin ja estänyt yrityksen koko IT-infrastruktuurin laajamittaisen vahingoittumisen.

### 7. The broader lesson - attribution and consequences
NotPetya osoitti, että kyberaseiden hallinta digitaalisesti yhteenliitetyssä maailmassa on lähes mahdotonta ja ne aiheuttavat välimatkasta huolimatta valtavia sivullisia vahinkoja. Geopoliittisesti tapaus hämärsi sodankäynnin rajoja, sillä valtiollisen toimijan osoittaminen on hidasta, mikä mahdollistaa aggressiiviset kyberoperaatiot ilman välitöntä sotilaallista vastinetta.

### 8. Your personal takeaway
Digitaalinen sodankäynti voi aiheuttaa erittäin paljon vahinkoa lyhyessä ajassa. Sodankäynti kokonaisuudessaan on muuttunut todella paljon.


## Issues and how I resolved them
Problems encountered, fixes applied.
