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
### Q5: What appears at the top of the new terminal?
Uuden terminaali ikkunan alussa näkyy teksti Hello, Linuxuser.

Tuloste:
```
Hello, Linuxuser
john@debian-lab:~$
```
### Q6: Paste the banner output you see.
Terminaalin alussa näkyy nyt:
```
===============================
  Welcome back, john
  Host: debian-lab
  Today: Saturday, 12 September 2026
===============================
john@debian-lab:~$ 
```

### Q7: What does $(whoami) do? Why are the dollar sign and parentheses there?
$(whoami) tulostaa nykyisen käyttäjän käyttäjänimen.
$(...) on Bashin komentokorvaus, joka suorittaa sulkeiden sisällä olevan komennon ja sijoittaa sen tuloksen tekstin sekaan.

### Part 4 - Adding aliases
### Q8: Paste the two aliases you defined and the output when you ran them.
Aliases:
```
alias ll='ls -la'
alias gohome='cd ~/cyber-course'
```
Komento: 
```
ll
```
Tuloste:
```
total 136
drwx------ 17 john john 4096 Sep 12 19:03 .
drwxr-xr-x  3 root root 4096 Sep  1 14:19 ..
-rw-------  1 john john 4574 Sep 12 18:59 .bash_history
-rw-r--r--  1 john john  220 Sep  1 14:19 .bash_logout
-rw-r--r--  1 john john 3579 Sep 12 19:03 .bashrc
...
```
Komento:
```
gohome
pwd
```
Tuloste:
```
/home/john/cyber-course
```
### Q9: How many aliases are now defined in your shell? (Include Debian defaults plus your additions.)
Komento:
```
alias
```
Tuloste:
```
alias gohome='cd ~/cyber-course'
alias ll='ls -la'
alias ls='ls --color=auto'
```
Aliaksia on määriteltynä yhteensä 3 kappaletta.
### Q10: Pick one of the two aliases you created. In one sentence, why is this a useful shortcut for you specifically?
gohome-alias on hyödyllinen, koska se siirtää nopeasti yhdellä lyhyellä komennolla suoraan projektikansioon, mikä säästää aikaa ja toistuvalta kirjoittamiselta.

### Part 5 - History settings
### Q11: What are the default values on your system?
Komento:
```
echo $HISTSIZE
```
Tuloste:
```
1000
```
Komento:
```
echo $HISTFILESIZE
```
Tuloste:
```
2000
```
HISTSIZE: 1000, aktiivisen istunnon muistissa säilytettävien komentojen määrä. <br>
HISTFILESIZE: 2000, tiedostoon ~/.bash_history tallennettavien komentojen enimmäismäärä.

### Q12: How many lines are in your history file? Paste the last 5 lines.
Komento:
```
wc -l ~/.bash_history
```
Tuloste:
```
231 /home/john/.bash_history
```
Komento:
```
tail -n 20 ~/.bash_history
```
Tuloste:
```
nano ~/.bashrc
nano ~/.barshc
nano ~/.bashrc
alias
nano ~/.bashrc
```
Historia-tiedostossa on yhteensä 231 riviä.

### Q13: What are the new values?
Komento:
```
echo $HISTSIZE
```
Tuloste:
```
10000
```
Komento:
```
echo $HISTFILESIZE
```
Tuloste:
```
20000
```
Uudet arvot ovat:   <br>
$HISTSIZE: 10000    <br>
$HISTFILESIZE: 20000

### Q14: What changes? How many commands does history now show?
Komento:
```
HISTSIZE=5
history
```
Tuloste:
```
  230  nano ~/.bashrc
  231  echo $HISTSIZE
  232  echo  $HISTFILESIZE
  233  HISTSIZE=5
  234  history
```
Asettamalla ```HISTSIZE=5``` aktiivisen terminaali-ikkunan muistissa säilytettävä historia rajoittuu välittömästi viiteen riviin, joten history-komento näyttää nyt vain 5 komentoa. Muutos on tilapäinen ja koskee ainoastaan nykyistä sessiota.

### Q15: A long history is convenient — but ~/.bash_history is a plain text file in your home directory. Name two reasons why someone with read access to your home folder might care what's in your history file.
Historia voi paljastaa vahingossa syötettyjä salasanoja tai API-avaimia, jos niitä on annettu komentojen parametreina.

Lisäksi historia paljastaa käyttäjän järjestelmässä tekemät toimet, käytetyt ohjelmat, katsellut tiedostot ja käytetyt etäpalvelinosoitteet, joita hyökkääjä voi hyödyntää järjestelmän kartoituksessa.

### Part 7 - Testing your script
### Q16: Paste the output. Then run ls -la test-run-1/ and paste the result.
Komento:
```
./make-files.sh
```
Tuloste:
```
Enter a directory name: test-run-1
Created directory: test-run-1
Created 5 files in test-run-1
```
Komento:
```
ls -la test-run-1/
```
Tuloste:
```
total 8
drwxrwxr-x 2 john john 4096 Sep 13 19:22 .
drwxrwxr-x 4 john john 4096 Sep 13 19:22 ..
-rw-rw-r-- 1 john john    0 Sep 13 19:22 file1.txt
-rw-rw-r-- 1 john john    0 Sep 13 19:22 file2.txt
-rw-rw-r-- 1 john john    0 Sep 13 19:22 file3.txt
-rw-rw-r-- 1 john john    0 Sep 13 19:22 file4.txt
-rw-rw-r-- 1 john john    0 Sep 13 19:22 file5.txt
```
### Q17: What does the script say this time? Did it still try to create the 5 files? What happens if a file with the same name already exists - does touch overwrite it, or does something else happen?
Komento:
```
./make-files.sh
```
tuloste:
```
Enter a directory name: test-run-1
Directory already exists: test-run-1
Created 5 files in test-run-1
```
Skripti ilmoittaa kansion olevan jo olemassa ja käsittelee olemassaolevat teidostot uudelleen.

Jos on samanniminen tiedosto jo olemassa, touch-komento ei ylikirjoita tiedoston sisältöä eikä tuhoa sitä. Komento päivittää ainoastaan viimeisimmän muokkausajan.

### Q18: What does the script do?
Komento:
```
./make-files.sh
```
Tuloste:
```
Enter a directory name: 
Error: no name was given.
```
Skripti tulostaa virheilmoituksen ```Error: no name was given.``` jos ei syötä mitään ja keskeyttää suorituksen.

### Part 8 - Reading and improving

## Findings
What I learned / what the output told me.

## Issues and how I resolved them
Problems encountered, fixes applied.

## References
Links to docs, write-ups, or related notes.
