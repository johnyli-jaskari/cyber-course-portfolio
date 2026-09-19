# U2-03b Assignment: Personal Device Hardening Checklist

**Date:** 2026-09-19 <br>
**Source:** U2-03b Assignment: Personal Device Hardening Checklist <br>
**Environment:** Debian 13 VM

## Goal
What I was trying to do.

## Steps
### Hardening checklist
### Operating system
1. ✅ OS is currently supported and receiving security updates.

Tarkistin käyttöjärjestelmän versio komennolla `cat /etc/os-release`. Käytössä on Debian 13 (trixie), joka on voimassa oleva ja tuettu versio.

![](screenshots/operating-system-1.png)

2. ✅ Automatic security updates are enabled

Tarkistaa onko automaattiset turvapäivitykset käynnissä.

<img src="screenshots/operating-system-2.png" width="600" height="300">

Ei, joten asensin ja konfiguroin automaattiset turvapäivitykset. <br>
<img src="screenshots/operating-system-3.png" width="800" height="500"> 
<img src="screenshots/operating-system-4.png" width="800" height="500">   

3. ✅ All pending updates installed

Järjestelmän päivitys komennolla `sudo apt update && sudo apt upgrade -y`. Kaikki saatavilla olevat paketit ja turvapäivitykset ovat asennettuina.

<img src="screenshots/operating-system-5.png" width="800" height="500">  
<img src="screenshots/operating-system-6.png" width="800" height="500">   

### Authentication
4. ✅ Strong login password or PIN set (not blank, not reused)

Käyttäjätilin salasana tilan varmistaminen komennolla `sudo chage -l john`. Käyttäjälle on asetettu vahva ja yksilöllinen salasana asennuksen yhteydessä.

![](screenshots/authentication-1.png)

5. ✅ Screen lock automatically activates within 5 minutes of inactivity  <br>

Komento, joka näyttää nykyisen lukitusviiveen sekunteina.  <br>
<img src="screenshots/authentication-2.png" width="800" height="500">  

Lukitusviive on jo valmiina asetettu 5 minuuttiin. Ja varmistus vielä, että automaattinen näytönlukitus on aktivoituna päälle.  <br>
<img src="screenshots/authentication-3.png" width="800" height="500">     

6. N/A Biometric login configured (where supported) as a convenience layer, not as the only factor

Käytössä on Debian 13 -virtuaalikoneympäristö, jossa ei ole kytkettynä biometrista laitteistoa (kuten sormenjälkilukijaa). Ajamalla komento `fprintd-enroll`, joka ilmoitti, ettei yhteensopivaa laitetta ole saatavilla. <br>
<img src="screenshots/authentication-4.png" width="600" height="300">

### Storage and data
7. N/A Full-disk encryption enabled (BitLocker, FileVault, LUKS)

Levyn salauksen tarkistus. Käytössä oleva Debian 13 VM ei hyödynnä kokolevynsalausta, sillä se on asennettu kevyeksi harjoitusympäristöksi. Arkikäytössä olevilla laitteilla salaus kytketään päälle asennusvaiheessa.  <br>
<img src="screenshots/storage-and-data-1.png" width="1000" height="700">

8. ✅ At least one recent backup exists in a separate location (external drive or cloud)

Varmuuskopio käyttäjän tiedoista.  <br>
<img src="screenshots/storage-and-data-2.png" width="1000" height="700">

9. ✅ Backup restoration tested at least once (try restoring a single file)
## Findings
What I learned / what

## Issues and how I resolved them
Problems encountered, fixes applied.
