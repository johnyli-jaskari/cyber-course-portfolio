# U1-05b Assignment: Linux CLI Basics

**Date:** 2026-09-06   <br>
**Source:** U1-05b Assignment: Linux CLI Basics  <br>
**Environment:** Debian 13 VM, Linux  

## Goal
What I was trying to do.

## Steps
### Part 1 Getting your bearings

Komento: ```pwd``` Tuloste: ```/home/john```


Komento: ```hostname```  Tuloste: ```debian-lab```


### Q1: What username are you logged in as?    <br>
Komento: ```whoami```  Tuloste: ```john```   
Käyttäjänimi on john.    <br>
### Q2: Are you a member of the sudo group? How can you tell from the output of id?    <br>
Komento: ```id```   
Tuloste: 
```
uid=1000(john) gid=1000(john) groups=1000(john),24(cdrom),25(floppy),27(sudo),29(audio),30(dip),44(video),46(plugdev),100(users),101(netdev),102(scanner),106(bluetooth),108(lpadmin)
```
Kyllä, olen sudo-ryhmän jäsen. Sen näkee id-komennon tulosteesta ryhmälistauksessa olevasta merkinnästä 27(sudo).   <br>
### Q3: What kernel version is your system running?  <br>
Komento: ```uname -a```  
Tuloste: 
```
Linux debian-lab 6.12.107+deb13-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.12.107-1 (2026-08-29) x86_64 GNU/Linux
```
Versio 6.12.107+deb13-amd64.   <br>
### Q4: What is the difference in the depth of information they give you?   <br>
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
```whatis``` antaa hyvin lyhyen, yhden rivin tiivistelmän komennon tarkoituksesta. ```man``` tarjoaa laajan ja yksityiskohtaisen käyttöohjeen.                                                                                                                                      
### Q5: While in man, how do you (a) search for the word "user" and (b) quit?    <br>
(a) Hae sana kirjoittamalla ```/user``` ja painamalla Enter.  (b) Poistu manuaalista painamalla kirjainta ```q```.  <br>

### Part 2 Navigation
### Q6: What did cd - do?
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

```cd -``` siirtää takaisin edelliseen hakemistoon, missä oli ennen nykyistä.
### Q7: What additional information does -l give you over plain ls?    <br>
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

```-l``` antaa tavalliseen ls-komentoon verrattuna yksityiskohtaisempia tietoja kuten tiedostojen ja hakemistojen käyttöoikeudet, linkkien määrän, omistajan ja ryhmän, koon tavuina sekä muokkausajankohdan.  <br>
### Q8: What does -a show that wasn't visible before? Name two examples from the output.   <br>
Komento: ```ls -la /etc```    <br>
Tuloste:
```
drwxr-xr-x 125 root                 root                 12288 Sep  6 13:09 .
drwxr-xr-x  19 root                 root                  4096 Sep  1 14:15 ..
```

```-a``` näyttää myös piilotetut tiedostot ja hakemistot. Esimerkiksi . ja ..
### Q9: What is the largest file in /var/log? What size is it?    <br>
Komento: ```ls -lh /var/log```
Tuloste: 
```
-rw-r--r--  1 root              root             49K Sep  1 17:11 alternatives.log
drwxr-xr-x  2 root              root            4.0K Sep  1 17:46 apt
```
Isoin tiedosto on dpkg.log, joka on 804 kilotavua
### Q10: What was modified most recently?    <br>
Komento: ```ls -lt /var/log```
Tuloste:
```
-rw-r--r--  1 root              root              8192 Sep  6 13:11 wtmp.db
-rw-rw-r--  1 root              utmp              4608 Sep  6 13:10 wtmp
```
Viimeisimpänä hakemistossa /var/log on muokattu tiedostoa wtmp.db

### Part 3 Creating and managing files
### Q11: Show the command (or commands) you used.
Komento:
```
mkdir -p ~/cyber-course/unit1 ~/cyber-course/unit2 ~/cyber-course/unit3/osint ~/cyber-course/unit3/recon ~/cyber-course/unit3/crypto ~/cyber-course/scratch
```
Tuloste: Ei tulostetta

Komento:
```
cd ~/cyber-course/scratch/
touch a.txt b.txt c.txt
```   
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
### Q14: Which Debian version do you have?

Komento: ```cat /etc/os-release```
Tuloste: 
```
PRETTY_NAME="Debian GNU/Linux 13 (trixie)"
NAME="Debian GNU/Linux"
```
Debian 13 (trixie) versio 13.6

Komento: ```cat /etc/services```   <br>
Tuloste:
```
tcpmux		1/tcp				# TCP port service multiplexer
echo		7/tcp
```
Tulostaa koko tiedoston sisällön kerralla ruudulle.

Komento: ```less /etc/services```    <br>
Tuloste: 
```
tcpmux          1/tcp                           # TCP port service multiplexer
echo            7/tcp
```
Avaa saman tiedoston mutta interaktiiviseen katseluohjelmaan. Harjoittelin erin komentojen kanssa.

Komento: ```head -n 5 /etc/services```  <br>
Tuloste:
```
# Network services, Internet style
#
# Updated from https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml .
#
# New ports will be added on request if they have been officially assigned
```
Näyttää tiedoston 5 ensimmäistä riviä.

### Q15: What kind of messages do you see? Are they recent?

Komento: ```sudo tail -n 10 /var/log/syslog```   <br>
Tuloste:
```
Sep 07 10:21:56 debian-lab sudo[2644]: pam_unix(sudo:session): session opened for user root(uid=0) by john(uid=1000)
Sep 07 10:21:56 debian-lab sudo[2644]: pam_unix(sudo:session): session closed for user root
```
Viestit ovat sudo-komentojen turvallisuuslokeja, jotka näyttävät käyttäjän suorittamat pääkäyttäjäkomennot ja istuntojen avaukset. Kyllä, ne ovat aivan tuoreita ja näkyvät lokissa viime minuuteilta.

### Part 5 Searching
