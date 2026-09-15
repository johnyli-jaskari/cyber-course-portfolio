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

Verkkoa segmentoimalla eristetään kriittiset lääkinnälliset järjestelmät ja tiedostopalvelimet erilleen yleisestä yritysverkosta ja internetistä. Vaatia monivaiheinen tunnistautuminen MFA kaikissa etäyhteyksissä luvattoman sisäänpääsyn estämiseksi. Järjestelmien ja sovellusten säännöllinen päivittäminen sulkee tunnetut haavoittuvuudet.

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

Vaarannettujen asiakastilien nopea sulkeminen. Mitätöidä kaikkien käyttäjien aktiiviset kirjautumisistunnot ja vaadita välitön salasanan vaihto. Toteuttaa lakisääteiset tietosuojailmoitukset asiakkaille ja viranomaisille jatkovahinkojen minimoimiseksi.

### Scenario C - The defaced municipal site
- Primary CIA violation

 Integrity

- Secondary impacts.

Availability: Verkkosivusto jouduttiin ottamaan pois käytöstä 4 tunniksi puhdistusta ja palautusta varten, mikä katkaisi julkiset palvelut. <br>
Confidentiality: Luvaton pääsy verkkopalvelimelle altistaa myös palvelimen sisäiset konfiguraatiot ja lokitiedostot hyökkääjän katseille.

- Attack technique

Verkkosovelluksen haavoittuvuuden hyödyntäminen, kuten tietoturva-aukko tai murrettu ylläpitäjän tunnus.
 
- Preventive controls

Julkaisujärjestelmä, sen lisäosat ja palvelinohjelmistot jatkuvasti päivitettyinä sekä järjestelmä kovennettuna. Vaatimalla vahva tunnistautuminen ja MFA kaikille ylläpitotileille. Sovelluspalomuuri suodattamaan haitallista verkkoliikennettä ja tiedostojen eheyden valvonta, jotta luvattomat muutokset sivuston tiedostoissa havaitaan välittömästi.

- Damage-limitation controls

Offline-varmuuskopioita, joiden avulla sivusto voidaan palauttaa nopeasti ennalleen käyttökatkon minimoimiseksi. Julkaisemalla tiedote paikallismedialle ja kuntalaisten suuntaan asiakastietojen turvallisuuden vahvistamiseksi sekä organisaation maineen suojaamiseksi.

## Findings
What I learned / what the output told me.

## Issues and how I resolved them
Problems encountered, fixes applied.

## References
Links to docs, write-ups, or related notes.
