# U1-05b Assignment: Linux CLI Basics

**Date:** 2026-09-06   <br>
**Source:** U1-05b Assignment: Linux CLI Basics  <br>
**Environment:** Debian 13 VM, Linux  

## Goal
Tehtävän tavoitteena on oppia ja hallita Linux-komentorivin (CLI) peruskomennot. Osata navigoida, hallita tiedostoja, hakea avainsanoja, ladata paketteja.
 
## Steps
### Part 1 Getting your bearings
### Q1: What username are you logged in as?    <br>
Komento: 
```
whoami
```
Tuloste: 
```
john
```   
Käyttäjänimi on john.    <br>
### Q2: Are you a member of the sudo group? How can you tell from the output of id?    <br>
Komento: 
```
id
```   
Tuloste: 
```
uid=1000(john) gid=1000(john) groups=1000(john),24(cdrom),25(floppy),27(sudo),29(audio),30(dip),44(video),46(plugdev),100(users),101(netdev),102(scanner),106(bluetooth),108(lpadmin)
```
Kyllä, olen sudo-ryhmän jäsen. Sen näkee id-komennon tulosteesta ryhmälistauksessa olevasta merkinnästä 27(sudo).   <br>
### Q3: What kernel version is your system running?  <br>
Komento: 
```
uname -a
```  
Tuloste: 
```
Linux debian-lab 6.12.107+deb13-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.12.107-1 (2026-08-29) x86_64 GNU/Linux
```
Versio 6.12.107+deb13-amd64.   <br>
### Q4: What is the difference in the depth of information they give you?   <br>
Komento: 
```
whatis whoami
```
Tuloste: 
```
whoami (1)           - print effective user name
```
Komento: 
```
man whoami
```    
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
Komento: 
```
cd -
pwd
```
Tuloste: 
```
/
```
```cd -``` siirtää takaisin edelliseen hakemistoon, missä oli ennen nykyistä.
### Q7: What additional information does -l give you over plain ls?    <br>
Komento: 
```
ls /etc
```    
Tuloste: 
```
adduser.conf            debconf.conf          host.conf        magic           profile.d          subuid
alsa                    debian_version        hostname         magic.mime      protocols          subuid-
```
Komento: 
```
ls -l /etc
```     
Tuloste:
```
-rw-r--r--  1 root                 root                  3981 May  6  2025 adduser.conf
drwxr-xr-x  3 root                 root                  4096 Sep  1 14:13 alsa
```

```-l``` antaa tavalliseen ls-komentoon verrattuna yksityiskohtaisempia tietoja kuten tiedostojen ja hakemistojen käyttöoikeudet, linkkien määrän, omistajan ja ryhmän, koon tavuina sekä muokkausajankohdan.  <br>
### Q8: What does -a show that wasn't visible before? Name two examples from the output.   <br>
Komento: 
```
ls -la /etc
```    
Tuloste:
```
drwxr-xr-x 125 root                 root                 12288 Sep  6 13:09 .
drwxr-xr-x  19 root                 root                  4096 Sep  1 14:15 ..
```

```-a``` näyttää myös piilotetut tiedostot ja hakemistot. Esimerkiksi . ja ..
### Q9: What is the largest file in /var/log? What size is it?    <br>
Komento: 
```
ls -lh /var/log
```   
Tuloste: 
```
-rw-r--r--  1 root              root             49K Sep  1 17:11 alternatives.log
drwxr-xr-x  2 root              root            4.0K Sep  1 17:46 apt
```
Isoin tiedosto on dpkg.log, joka on 804 kilotavua
### Q10: What was modified most recently?    <br>
Komento: 
```
ls -lt /var/log
```
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

### Q12: What key combination did you use to save? What key combination did you use to exit?
Save: Ctrl + O (ja Enter)   <br>
Exit: Ctrl + X    <br>
Varmistuskomento:
```
cat ~/cyber-course/unit1/intro.txt
```
Tuloste:
```
This is my first file edited from the Linux command line.
Today I learned that mv is also rename, and that nano shows shortcuts at the bottom.
```
### Q13: Why did rmdir fail (or succeed)?
Komento:
```
rmdir ~/cyber-course/scratch/
```
Tuloste:
```
rmdir: failed to remove '/home/john/cyber-course/scratch/': Directory not empty
```
Komento:
```
rm -r ~/cyber-course/scratch/
```
Komento onnistui.

rmdir-komento epäonnistui, koska se pystyy poistamaan vain täysin tyhjiä kansioita. Kansio scratch/ sisältää tiedoston note.txt.

### Part 4 Viewing files
### Q14: Which Debian version do you have?
Komento: 
```
cat /etc/os-release
```
Tuloste: 
```
PRETTY_NAME="Debian GNU/Linux 13 (trixie)"
NAME="Debian GNU/Linux"
```
Debian 13 (trixie) versio 13.6

### Q15: What kind of messages do you see? Are they recent?
Komento: 
```
sudo tail -n 10 /var/log/syslog
```  
Tuloste:
```
Sep 07 10:21:56 debian-lab sudo[2644]: pam_unix(sudo:session): session opened for user root(uid=0) by john(uid=1000)
Sep 07 10:21:56 debian-lab sudo[2644]: pam_unix(sudo:session): session closed for user root
```
Viestit ovat sudo-komentojen turvallisuuslokeja, jotka näyttävät käyttäjän suorittamat pääkäyttäjäkomennot ja istuntojen avaukset. Kyllä, ne ovat aivan tuoreita ja näkyvät lokissa viime minuuteilta.

### Part 5 Searching
### Q16: How many lines were returned? (Hint: pipe to wc -l.)
Komento: 
```
grep "ssh" /etc/services | wc -l
```
Tuloste: 
```
1
```  
Yksi rivi.

### Q17: How would you modify the command to show only .conf files modified in the last 7 days?
Komento: 
```
sudo find /etc -name "*.conf" -mtime -7
```
Tuloste: 
```
/etc/cups/subscriptions.conf
/etc/cups/cupsd.conf
```
Pystyy näkemään .conf tiedostot mitä on muokattu viimeisen 7 päivän sisällä lisäämällä loppuun komennot ```-mtime``` ja ```-7``` .
### Q18: Where are these commands actually located on the filesystem?
Komento: 
```
which ls
```  
Tuloste: 
```
/usr/bin/ls
```
Komento: 
```
which nano
```     
Tuloste: 
```
/usr/bin/nano
```

Komennon ```ls```sijainti tiedostojärjestelmässä on ```/usr/bin/ls```, ja komennon ```nano``` sijainti ```/usr/bin/nano```.
### Part 6 History, redirection, and pipes
### Q19: What does the | symbol do here?
Komento: 
```
history | tail -n 20
```
Tuloste: 
```
124  ls ~/cyber-course/srcratch
125  ls ~/cyber-course/scratch
```
```|``` -symboli ottaa history-komennon ja syöttää sen suoraan tail -n 20 -komennolle käsiteltäväksi.

### Q20: What is the difference between > and >>?
Komento: 
```
ls -la ~/cyber-course/ > ~/listing.txt
cat ~/listing.txt
```   
Tuloste: 
```
drwxrwxr-x  2 john john 4096 Sep  6 18:46 unit2
drwxrwxr-x  5 john john 4096 Sep  6 18:25 unit3
```
Komento: 
```
date >> ~/listing.txt
cat ~/listing.txt
```     
Tuloste: 
```
drwxrwxr-x  5 john john 4096 Sep  6 18:25 unit3
Mon Sep  7 06:01:21 PM EEST 2026
```
```>``` ylikirjoittaa tiedoston sisällön, jos on vanhaa sisältöä on niin sen poistaa ja korvaa. Kun taas ```>>``` pitää vanhan sisällön ennallaan ja kirjoittaa uuden tiedon sen loppuun.
### Q21: What was the output, and why?
Komento: 
```
echo "hello cyber world" | grep "cyber"
```    
Tuloste: 
```
hello cyber world
```
Output oli hello cyber world, koska echo luo tekstin, putki (```|```) siirtää sen grep:ille, ja grep tulostaa rivin löydettyään hakusanan "cyber".

### Part 7 Archives
### Q22: Confirm with ls -la that the extraction worked. What did you find inside?
Komento:
```
mkdir ~/test-extract
cd ~/test-extract
unzip ~/cyber-course/unit1.zip
```
Tuloste:
```
Archive:  /home/john/cyber-course/unit1.zip
   creating: unit1/
  inflating: unit1/intro.txt 
```
Komento: 
```
ls -la
```   
Tuloste:
```
drwxrwxr-x  3 john john 4096 Sep  8 09:29 .
drwx------ 16 john john 4096 Sep  8 09:28 ..
drwxrwxr-x  2 john john 4096 Sep  6 19:22 unit1
```
Purku onnistui, ja test-extract-kansiosta löytyi purettu unit1-hakemisto, joka sisältää intro.txt-tiedoston.
### Q23: What do the flags c, z, v, and f each mean?
Komento: 
```
tar -tvf unit2.tar.gz
```     
Tuloste: 
```
drwxrwxr-x john/john         0 2026-09-06 18:46 unit2/
-rw-rw-r-- john/john         0 2026-09-06 18:26 unit2/b.txt
```
(c) Luodaan uusi arkistotiedosto. (z) Pakataan arkisto gzip-menetelmällä. (v) Näytetään näytöllä yksityiskohtaisesti kaikki käsiteltävät tiedostot. (f) Määritetään luotavan tai luettavan arkistotiedoston nimi.

### Part 8 Permissions
### Q24: Paste the permission string. Can the owner execute the file?
Komento:
```
touch ~/cyber-course/hello.sh
ls -l ~/cyber-course/hello.sh
```
Tuloste:
```
-rw-rw-r-- 1 john john 0 Sep  8 10:07 /home/john/cyber-course/hello.sh
```
Oikeusmerkkijono: ```-rw-rw-r--```. Omistajalla ei ole suoritusoikeutta, koska omistajan oikeuksista (rw-) puuttuu suoritusoikeuden merkki (x).
### Q25: What happened, and why?
Komento:
```
~/cyber-course/hello.sh
```
Tuloste:
```
bash: /home/john/cyber-course/hello.sh: Permission denied
```
Skriptiä yritettiin ajaa nano-tallennuksen jälkeen, mutta järjestelmä antoi virheilmoituksen Permission denied. Tämä johtuu siitä, että tiedostolta puuttuu suoritusoikeus.
### Q26: What does the new permission string look like? Did the script run this time?
Komento:
```
chmod u+x ~/cyber-course/hello.sh
ls -l ~/cyber-course/hello.sh
```
Tuloste:
```
-rwxrw-r-- 1 john john 46 Sep  8 10:18 /home/john/cyber-course/hello.sh
```
Komento:
```
~/cyber-course/hello.sh
```
Tuloste:
```
Hello from my first script
```
Uusi oikeusmerkkijono on ```-rwxrw-r--```. Skripti suoritettiin tällä kertaa onnistuneesti, ja se tulosti ruudulle tekstin "Hello from my first script"
### Q27: What does 700 mean in plain language?
Komento:
```
chmod 700 ~/cyber-course/hello.sh
ls -l ~/cyber-course/hello.sh
```
Tuloste:
```
-rwx------ 1 john john 46 Sep  8 10:18 /home/john/cyber-course/hello.sh
```
Numero ```700``` tarkoittaa, että tiedoston omistajalla on täydet luku-, kirjoitus- ja suoritusoikeudet, kun taas ryhmällä ja muilla käyttäjillä ei ole mitään oikeuksia.
### Part 9 Processes and system info
### Q28: What does the USER column show?
Komento:
```
ps aux | head -n 10
```
Tuloste:
```
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.3  23788 14448 ?        Ss   06:03   0:01 /sbin/init
root           2  0.0  0.0      0     0 ?        S    06:03   0:00 [kthreadd]
```
USER-sarake näyttää sen käyttäjänimen, joka omistaa prosessin ja jonka oikeuksilla se pyörii.
### Q29: How much disk space is your cyber-course directory using?
Komento:
```
du -sh ~/cyber-course/
```
Tuloste:
```
52K	/home/john/cyber-course/
```
cyber-course-hakemisto käyttää 52 kilotavua levytilaa.

### Q30: How much RAM does your VM have, and how much is currently used?
Komento:
```
free -h
```
Tuloste:
```
               total        used        free      shared  buff/cache   available
Mem:           3.8Gi       1.2Gi       2.0Gi       9.1Mi       867Mi       2.7Gi
Swap:          1.6Gi          0B       1.6Gi
```
Virtuaalikoneella on yhteensä 3,8 GiB RAM-muistia, josta 1,2 GiB on tällä hetkellä käytössä.

### Part 10 Networking and downloads
### Q31: What is your VM's IP address on the primary interface?
Komento:
```
ip a
```
Tuloste:
```
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
```
Ensisijaisen verkkokortin (enp0s3) ip osoitteena on 10.0.2.15
### Q32: Did both succeed? If one failed, what is the most likely reason?
Komento:
```
ping -c 4 1.1.1.1
```
Tuloste:
```
PING 1.1.1.1 (1.1.1.1) 56(84) bytes of data.

--- 1.1.1.1 ping statistics ---
4 packets transmitted, 0 received, 100% packet loss, time 3210ms
```
Komento:
```
ping -c 4 example.com
```
Tuloste:
```
PING example.com (172.66.147.243) 56(84) bytes of data.

--- example.com ping statistics ---
4 packets transmitted, 0 received, 100% packet loss, time 3080ms
```
Molemmat epäonnistuivat, todennäköinen syy tälle on että palomuuri tai reititin estää ICMP (ping) -liikenteen.
### Q33: Are the two files identical? (Hint: diff debian.html debian2.html.)
Komento:
```
wget https://www.debian.org/index.html -O ~/cyber-course/debian.html
less ~/cyber-course/debian.html
```
Tuloste:
```
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
```
Komento:
```
curl https://www.debian.org/ -o ~/cyber-course/debian2.html
diff debian.html debian2.html
```
Tuloste: tyhjä.

Kyllä, tiedostot ovat identtiset. diff-komento ei palauta mitään tulostetta.
### Part 11 Package management and sudo
### Q34: Did sudo ask for a password? Whose password?
Komento:
```
sudo apt update
```
Tuloste:
```
Hit:1 http://deb.debian.org/debian trixie InRelease
Get:2 http://security.debian.org/debian-security trixie-security InRelease [43.4 kB]
```
```sudo``` kysyi nykyisen käyttäjän omaa salasanaa.
### Q35: Were any packages upgraded? Roughly how many?
Komento:
```
apt list --upgradable
```
Tuloste:
```
firefox-esr/stable-security 140.15.0esr-1~deb13u1 amd64 [upgradable from: 140.14.0esr-1~deb13u1]
libde265-0/stable-security 1.0.15-1+deb13u2 amd64 [upgradable from: 1.0.15-1+deb13u1]
```
Komento:
```
sudo apt upgrade
```
Tuloste:
```
Upgrading:                      
  firefox-esr  libde265-0  libjbig2dec0
```
3 pakettia päivitettiin (firefox-esr, libde265-0 ja libjbig2dec0).
### Q36: What's one thing htop shows you that top did not?
Komento:
```
htop
```
Tuloste:
```
  [Main] [I/O]
Send signal:       PID USER       PRI  NI  VIRT   RES   SHR S  CPU% MEM%   TIME+  Command△
 0 Cancel         1517 john        20   0 24684  3872  2040 S   0.0  0.1  0:00.00 (sd-pam)
 1 SIGHUP            1 root        20   0 23788 14448 10564 S   0.0  0.4  0:01.10 /sbin/init
 2 SIGINT         2162 john        20   0 14052  1708  1364 S   0.0  0.0  0:00.00 /usr/bin/VBoxClient --clipboard
```
```htop``` näyttää graafiset, värikkäät palkit suorittimen ydinten, RAM-muistin ja Swap-muistin käytölle, joita top-komento ei näytä.
### Q37: What is nmap, according to the description?
Komento:
```
apt search nmap
```
Tuloste:
```
nmap/stable 7.95+dfsg-3 amd64
  The Network Mapper
```
Kuvauksen mukaan nmap on "The Network Mapper" on työkalu, jota käytetään verkon kartoitukseen ja tietoturvatarkastuksiin.
### Part 12 Putting it together
### Q38: Paste the commands you used. The output redirection (> and >>) is the key here.
Komento:
```
cd
mkdir report
hostname > report/system-info.txt
whoami >> report/system-info.txt
uname -a >> report/system-info.txt
df -h >> report/system-info.txt
date >> report/system-info.txt
zip -r report.zip report
unzip -l report.zip
```
Tuloste:
```
Archive:  report.zip
  Length      Date    Time    Name
---------  ---------- -----   ----
        0  2026-09-08 15:49   report/
      604  2026-09-08 15:53   report/system-info.txt
---------                     -------
      604                     2 files
```

### A short reflection (150–200 words) at the end, in its own section, covering:

Which command surprised you (positively or negatively)?  <br>
Komento mkdir -p yllätti positiivisesti, jonka avulla voi tehdä kokonaisen useamman tason kansiorakenteen yhdellä komentorivillä.     

Which command will you use most often, and why?         <br>
cd komentoa, jota voi käyttää eri hakemistojen ja kansioiden välillä siirtymiseen ja mahdollistaan paljon komentojen suoritusta tietyissä paikoissa. On tosi yleinen ja standardi terminaalia käyttäessä.   

What one thing about the Linux CLI is still confusing?      <br>
tar -czvf -komento.
