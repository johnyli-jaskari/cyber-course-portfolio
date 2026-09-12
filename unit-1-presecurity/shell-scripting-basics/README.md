# U1-06b Assignment: Shell Scripting Basics

**Date:** 2026-09-12   <br>
**Source:** U1-06b Assignment: Shell Scripting Basics   <br>
**Environment:** Debian 13 VM

## Goal
What I was trying to do.

## Steps
### Part 1 - Exploring your ~/.bashrc
### Q1: Paste the line. What size is the file? When was it last modified?
Komento:
```
ls -la ~ | grep bashrc
```
Tuloste:
```
-rw-r--r--  1 john john 3526 Sep  1 14:19 .bashrc
```
Tiedoston koko on 3526 tavua. Tiedostoa on viimeksi muokattu 1.9 Klo 14:19.

### Q2: Find one section that contains comments explaining what it does. Paste a 3–5 line excerpt and explain in one sentence what that section does.
Komento:
```
less ~/.bashrc
```
Tuloste:
```
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac
```
Tämä osio tarkistaa, onko komentosessio käyttäjän aktiivisessa käytössä, jos ei ja komentoja ajetaan automaattisesti taustalla, tiedoston lukeminen lopetetaan.
### Q3: Find a section that already defines aliases (look for the word alias). Are any aliases already set up by Debian's default .bashrc? Name two.
Komento:
```
less ~/.bashrc
```
Tuloste:
```
# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'
```
Kyllä, on valmiita aliaksia. Esimerkiksi alias ll='ls -l' ,joka näyttää yksityiskohtaisen listauksen kaikista tiedostoista. Alias la='ls -A' ,joka näyttää kaikki tiedostot mukaanlukien piilotiedostoja.

## Part 2 - Backup before editing
### Q4: Paste the output. Confirm you have both .bashrc and .bashrc.backup.
Komento:
```
cp ~/.bashrc ~/.bashrc.backup
ls -la ~/.bashrc*
```
Tuloste:
```
-rw-r--r-- 1 john john 3526 Sep  1 14:19 /home/john/.bashrc
-rw-r--r-- 1 john john 3526 Sep 12 17:06 /home/john/.bashrc.backup
```
Molemmat tiedostot .bashrc ja .bashrc.backup löytyvät kotihakemistosta ja ovat samankokoisia.
### Part 3 - Adding a welcome banner

## Findings
What I learned / what the output told me.

## Issues and how I resolved them
Problems encountered, fixes applied.

## References
Links to docs, write-ups, or related notes.
