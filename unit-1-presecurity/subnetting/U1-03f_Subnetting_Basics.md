# U1-03f Assignment: Subnetting Basics

**Date:** 2026-09-1   <br>
**Source:** U1-03f Assignment: Subnetting Basics    <br>
**Environment:** Excel    <br>

## Goal
Ymmärtämään IPv4- ja IPv6-osoitteita, muuntamaan IP-osoitteita desimaali-, binaari- ja CIDR-muotojen välillä sekä laskemaan subnetin verkko-osoite, gateway, käytettävissä olevat host-osoitteet ja broadcast-osoite.
## Steps

### Task 1 - Binary ↔ decimal for a single octet

- 1.1 - Decimal to binary  <br>
<img width="327" height="550" alt="image" src="https://github.com/user-attachments/assets/07404767-45ed-4c4c-b4d3-ce7a7638140a" />

- 1.2 - Binary to decimal  <br>
<img width="397" height="442" alt="image" src="https://github.com/user-attachments/assets/2ca5f758-2480-48b4-a06e-85b107a1ee9c" />

- 1.3 - Full-address conversion <br>
Write these IPv4 addresses in binary. <br>
<img width="1248" height="263" alt="image" src="https://github.com/user-attachments/assets/720274f2-729d-4e42-a586-17eec033feb8" />

  Write these binary IPs in dotted-decimal <br>
<img width="1227" height="213" alt="image" src="https://github.com/user-attachments/assets/c1c9716a-9987-477c-b548-beec0c65ec1d" />

### Task 2 - Recognize the class and CIDR

- 2.1 - What class is it?  <br>
<img width="1707" height="856" alt="image" src="https://github.com/user-attachments/assets/99ea270d-b11d-4387-aa77-0a85635a6fd2" />

- 2.2 - Mask ↔ CIDR ↔ binary   <br>
<img width="900" height="286" alt="image" src="https://github.com/user-attachments/assets/4619e899-071b-4973-bec5-880ad61faf2b" />

- 2.3 - Networks and hosts per class   <br>
<img width="1502" height="252" alt="image" src="https://github.com/user-attachments/assets/c369fceb-198a-4165-a511-c043d4b18412" />

### Task 3 - The five key values - the main event
<img width="1381" height="897" alt="image" src="https://github.com/user-attachments/assets/b640387d-7938-4230-882c-fbcf8f7bfbbf" />

### Task 4 - Which subnet does this host belong to?
<img width="1862" height="762" alt="image" src="https://github.com/user-attachments/assets/7fbfdc2b-6897-4b72-9f0a-3b61b28de344" />

### Task 5 - Slicing up a /24

- 5.1 - Four equal /26 subnets  <br>
<img width="1782" height="995" alt="image" src="https://github.com/user-attachments/assets/f48a6afe-0a27-4e4f-957a-5195feddb762" />

- 5.2 - Enough hosts? <br>


Would a /26 fit all four departments? <br>
Kyllä, sillä se tarjoaa 62 käyttökelpoista osoitetta.

Which departments have "too much" address space and could use a smaller subnet (higher CIDR number, fewer host bits)?  <br>
Osastot B, C ja D saavat /26-verkolla likaa osoitteita ja voisivat käyttää pienempää verkkoa.

Suggest a better CIDR (e.g. /26, /27, /28, /29, /30) for each department.  <br> 
Department A: /26   <br>
Department B: /27   <br>
Department C: /28   <br>
Department D: /30    

<img width="759" height="384" alt="image" src="https://github.com/user-attachments/assets/6086ba8f-fc3d-4655-a8d3-4337a639ba27" />

### Task 6 - IPv6, briefly

- 6.1 - Hex ↔ decimal ↔ binary refresher   <br>
<img width="855" height="666" alt="image" src="https://github.com/user-attachments/assets/26275a5a-ffad-4b94-8ef6-56047378e166" />

- 6.2 - Compress these IPv6 addresses    <br>
<img width="1338" height="209" alt="image" src="https://github.com/user-attachments/assets/30c7a8b9-5528-43e6-a34c-8da81898026a" />

- 6.3 - A conceptual question


In your own words, in 2–3 sentences: why do we need IPv6?    <br>
IPv6 osoitetta tarvitaan ja kehitettiin, koska IPv4 ei pysty tarjoamaan tarpeeksi monta miljardia uniikkia IP-osoitetta eri käyttäjille ja koneille. Uudella standardilla IPv4 ja IPv6 avulla pystytään tarjoamaan yksilöllisiä osoitteita kaikille laitteille. Lisäksi IPv6 tuo mukanaan rakenteellisia parannuksia.

## Findings
Opin jakamaan verkon pienempiin aliverkkoihin.

## Issues and how I resolved them
Haasteita oli ajoittain CIDR block verkon tietojen päätteleminen ja täydentäminen.
