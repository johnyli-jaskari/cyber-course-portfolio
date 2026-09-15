# U2-01a Assignment: CIA Triad Case Studies

**Date:** 2026-09-15
**Source:** U2-01a Assignment: CIA Triad Case Studies
**Environment:** MacOS, Moodle

## Goal
What I was trying to do.

## Steps
### Scenario A - The hospital
- Primary CIA violation

Availability

- Secondary impacts.

Confidentiality: Hyökkääjät varastivat potilastietoja ja uhkasivat julkaista ne, mikä vaaransi luottamuksellisten henkilö- ja terveystietojen suojan.  <br>
Integrity: Kryptatut palvelimet ja potilastiedot muuttuivat käyttökelvottomiksi ja epäluotettaviksi, kunnes ne saadaan palautettua.

- Attack technique

Ransomware-hyökkäys kaksoiskiristyksellä.

- Preventive controls

Verkkoa segmentoimalla eristetään kriittiset lääkinnälliset järjestelmät ja tiedostopalvelimet erilleen yleisestä yritysverkosta ja internetistä. Vaaditaan Monivaiheinen tunnistautuminen MFA kaikissa etäyhteyksissä luvattoman sisäänpääsyn estämiseksi. Järjestelmien ja sovellusten säännöllinen päivittäminen sulkee tunnetut haavoittuvuudet.

- Damage-limitation controls

Säännöllisesti ylläpidettävät ja lukitut varmuuskopiot mahdollistavat järjestelmien palauttamisen, vaikka alkuperäiset tiedostot olisi kryptattu. Saastuneiden verkko-osien välitön irrottaminen muusta verkosta pysäyttää haittaohjelman leviämisen muihin kriittisiin järjestelmiin. Uloslähtevän tietoliikenteen automaattinen valvonta estää poikkeukselliset tiedostonsiirrot ja rajoittaa siten laajamittaisia tietovuotoja.

### Scenario B - The leaked database
- Primary CIA violation

Confidentiality

- Secondary impacts.

Integrity: Vanhentuneella MD5-algoritmilla tiivistettyjen salasanojen vuotaminen heikentää käyttäjätunnistuksen eheyttä ja mahdollistaa luvattoman tilien kaappauksen. <br>
Availability: Vaikka järjestelmät pysyivät pystyssä, pakotetut salasanojen nollaukset ja tietoturvatoimet aiheuttavat tilapäisiä katkoja käyttäjien palvelukäyttöön.

- Attack technique

SQL-injektio ja luvaton tietojenvuoto.

- Preventive controls

Rajoittamalla tietokannan käyttöoikeuksia ja käyttöoikeudet vain välttämättömiin toimintoihin. Korvaamalla heikko MD5-suojaus nykyaikaisilla vaihtoehdoilla kuten bcrypt tai Argon2.

- Damage-limitation controls

Vaarannettujen asiakastilien nopea sulkeminen. Mitätöidään kaikkien käyttäjien aktiiviset kirjautumisistunnot ja vaaditaan välitön salasanan vaihto. Toteutetaan lakisääteiset tietosuojailmoitukset asiakkaille ja viranomaisille jatkovahinkojen minimoimiseksi.

## Findings
What I learned / what the output told me.

## Issues and how I resolved them
Problems encountered, fixes applied.

## References
Links to docs, write-ups, or related notes.
