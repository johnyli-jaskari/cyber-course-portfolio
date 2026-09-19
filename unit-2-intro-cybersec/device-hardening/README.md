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
![](screenshots/operating-system-2.png)

Ei, joten asensin ja konfiguroin automaattiset turvapäivitykset. <br>
![](screenshots/operating-system-3.png)
![](screenshots/operating-system-4.png)

3. ✅ All pending updates installed

Järjestelmän päivitys komennolla `sudo apt update && sudo apt upgrade -y`. Kaikki saatavilla olevat paketit ja turvapäivitykset ovat asennettuina.
![](screenshots/operating-system-5.png)
![](screenshots/operating-system-6.png)

### Authentication
4. ✅ Strong login password or PIN set (not blank, not reused)
Käyttäjätilin salasana tilan varmistaminen komennolla `sudo chage -l john`. Käyttäjälle on asetettu vahva ja yksilöllinen salasana asennuksen yhteydessä.
![](screenshots/authentication-1.png)

## Findings
What I learned / what

## Issues and how I resolved them
Problems encountered, fixes applied.
