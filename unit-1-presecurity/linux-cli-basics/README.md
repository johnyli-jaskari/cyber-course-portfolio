# U1-05b Assignment: Linux CLI Basics

**Date:** 2026-09-06   <br>
**Source:** U1-05b Assignment: Linux CLI Basics  <br>
**Environment:** Debian 13 VM, Linux  

## Goal
What I was trying to do.

## Steps
### Part 1 Getting your bearings
- Open a terminal on your Debian VM.

Komento: ```whoami```  Tuloste: ```john```   

Komento: ```pwd``` Tuloste: ```/home/john```

Komento: ```id```   
Tuloste: 
```
uid=1000(john) gid=1000(john) groups=1000(john),24(cdrom),25(floppy),27(sudo),29(audio),30(dip),44(video),46(plugdev),100(users),101(netdev),102(scanner),106(bluetooth),108(lpadmin)
```

Komento: ```hostname```  Tuloste: ```debian-lab```

Komento: ```uname -a```  
Tuloste: 
```
Linux debian-lab 6.12.107+deb13-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.12.107-1 (2026-08-29) x86_64 GNU/Linux
```

### Q1: What username are you logged in as?   <br>
Käyttäjänimi on john.    <br>
### Q2: Are you a member of the sudo group? How can you tell from the output of id?    <br>
Kyllä, olen sudo-ryhmän jäsen. Sen näkee id-komennon tulosteesta ryhmälistauksessa olevasta merkinnästä 27(sudo).   <br>
### Q3: What kernel version is your system running?  <br>
Versio 6.12.107+deb13-amd64.   <br>
- Find out what whoami is for using two different help tools.
                                                                                                                                      
Komento: ```whatis whoami```    Tuloste: ```whoami (1)           - print effective user name```

Komento: ```man whoami```    
Tuloste: 
```
NAME
       whoami - print effective user name

SYNOPSIS
       whoami [OPTION]...

DESCRIPTION
       Print the user name associated with the current effective user ID.  Same as id -un.
```
### Q4: What is the difference in the depth of information they give you?   <br>
```whatis``` antaa hyvin lyhyen, yhden rivin tiivistelmän komennon tarkoituksesta. ```man``` tarjoaa laajan ja yksityiskohtaisen käyttöohjeen.
### Q5: While in man, how do you (a) search for the word "user" and (b) quit?    <br>
(a) Hae sana kirjoittamalla ```/user``` ja painamalla Enter.  (b) Poistu manuaalista painamalla kirjainta ```q```.  <br>

### Part 2 Navigation
- From your home directory, navigate as follows. After each cd, run pwd to confirm where you are.

Komento: ```cd /etc``` ja ```pwd```

Tuloste: ```/etc```

Komento:```cd ..``` ja ```pwd```

Tuloste: ```/```

Komento:```cd /var/log``` ja ```pwd```

Tuloste: ```/var/log```

Komento:```cd -``` ja ```pwd```

Tuloste: ```/```

Komento:```cd ~``` ja ```pwd```

Tuloste: ```/home/john```

Komento:```cd /``` ja ```pwd```

Tuloste: ```/```

### Q6: What did cd - do?
```cd -``` siirtää takaisin edelliseen hakemistoon, missä oli ennen nykyistä.
- List the contents of /etc in three ways.

Komento: ```ls /etc```    <br>
Tuloste: 
```
adduser.conf            debconf.conf          host.conf        magic           profile.d          subuid
alsa                    debian_version        hostname         magic.mime      protocols          subuid-
```
Komento: ```ls -l /etc```     <br>
Tuloste:
```
-rw-r--r--  1 root                 root                  3981 May  6  2025 adduser.conf
drwxr-xr-x  3 root                 root                  4096 Sep  1 14:13 alsa
```
Komento: ```ls -la /etc```    <br>
Tuloste:
```
drwxr-xr-x 125 root                 root                 12288 Sep  6 13:09 .
drwxr-xr-x  19 root                 root                  4096 Sep  1 14:15 ..
```
### Q7: What additional information does -l give you over plain ls?    <br>
```-l``` antaa tavalliseen ls-komentoon verrattuna yksityiskohtaisempia tietoja kuten tiedostojen ja hakemistojen käyttöoikeudet, linkkien määrän, omistajan ja ryhmän, koon tavuina sekä muokkausajankohdan.  <br>
### Q8: What does -a show that wasn't visible before? Name two examples from the output.   <br>
```-a``` näyttää myös piilotetut tiedostot ja hakemistot. Esimerkiksi . ja ..
- Run ls -lh /var/log.

Komento: ```ls -lh /var/log```
Tuloste: 
```
-rw-r--r--  1 root              root             49K Sep  1 17:11 alternatives.log
drwxr-xr-x  2 root              root            4.0K Sep  1 17:46 apt
```

### Q9: What is the largest file in /var/log? What size is it?    <br>
Isoin tiedosto on dpkg.log, joka on 804 kilotavua
- Run ls -lt /var/log.

Komento: ```ls -lt /var/log```
Tuloste:
```
-rw-r--r--  1 root              root              8192 Sep  6 13:11 wtmp.db
-rw-rw-r--  1 root              utmp              4608 Sep  6 13:10 wtmp
```
### Q10: What was modified most recently?    <br>
Viimeisimpänä hakemistossa /var/log on muokattu tiedostoa wtmp.db

### Part 3 Creating and managing files
- Create a directory structure
### Q11: Show the command (or commands) you used.
Komento:
```
mkdir -p ~/cyber-course/unit1 ~/cyber-course/unit2 ~/cyber-course/unit3/osint ~/cyber-course/unit3/recon ~/cyber-course/unit3/crypto ~/cyber-course/scratch
```
- Inside ~/cyber-course/scratch/, create three empty files: a.txt, b.txt, c.txt. Verify with ls.

Komento:
```
cd ~/cyber-course/scratch/
touch a.txt b.txt c.txt
```    <br>
Ja varmistus ```ls```
- Copy a.txt to ~/cyber-course/unit1/ with the new name intro.txt. Verify it exists in the new location.

Komento:```cp ~/cyber-course/scratch/a.txt ~/cyber-course/unit1/intro.txt```    <br>
ja tarkistus ```ls ~/cyber-course/unit1/```
- Move b.txt to ~/cyber-course/unit2/.

Komento: ```mv ~/cyber-course/scratch/b.txt ~/cyber-course/unit2/```   <br>
- Rename c.txt to notes.txt (still in scratch/).

Komento: ```mv ~/cyber-course/scratch/c.txt ~/cyber-course/scratch/notes.txt```  <br>
- Open ~/cyber-course/unit1/intro.txt with nano. Type the following text:
  This is my first file edited from the Linux command line.
  Today I learned that mv is also rename, and that nano shows shortcuts at the bottom.

Komento: ```nano ~/cyber-course/unit1/intro.txt```

### Q12: What key combination did you use to save? What key combination did you use to exit?
Save: Ctrl + O (ja Enter)   <br>
Exit: Ctrl + X

Komento: ```cat ~/cyber-course/unit1/intro.txt``` , vahvistaa sisällön ja tuo esiin tekstin.
### Q13: Why did rmdir fail (or succeed)?
Komento epäonnistui, koska rmdir-komento pystyy poistamaan vain täysin tyhjiä kansioita. Kansio scratch/ sisältää tiedoston note.txt.

- Now delete ~/cyber-course/scratch/ properly. Show the command you used.

Komento: ```rm -r ~/cyber-course/scratch/``` poistaa kunnolla koko kansiorakenteen.

### Part 4 Viewing files
