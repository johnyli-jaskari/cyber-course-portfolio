# U1-04c Assignment: Debian Installation

**Date:** 2026-9-1   <br>
**Source:** U1-04c Assignment: Debian Installation   <br>
**Environment:** Debian Linux    <br>

## Goal
Debian 13 Linux virtuaalikoneen asennus Virtualboxia käyttäen.

## Steps
Asensin debian linux käyttöjärjestelmän.

1. vm-settings.png - the VirtualBox Settings window for your VM, showing the System tab (so RAM and CPU allocations are visible)

<img width="767" height="530" alt="image" src="https://github.com/user-attachments/assets/960be193-aced-4aad-be51-ffbc36a90704" />  <img width="767" height="552" alt="image" src="https://github.com/user-attachments/assets/888e7539-f46f-4f11-8db5-b9cc8e4c9c74" />

2. login-screen.png - the Debian login screen with your username visible

<img width="500" height="550" alt="image" src="https://github.com/user-attachments/assets/87f826a4-44b2-473d-ab0b-02f91ec0dd66" />

3. terminal-uname.png - a terminal inside the VM showing the output of:  <br>
uname -a  <br>
cat /etc/debian_version  <br>
ip a | grep inet

<img width="1001" height="476" alt="image" src="https://github.com/user-attachments/assets/68c4802f-8e0e-4807-be29-f7599a99e45b" />

4. guest-additions-working.png - the VM desktop with the window resized to a non-default shape, showing the Debian desktop filling it (proves Guest Additions is working)

   <img width="1918" height="1020" alt="image" src="https://github.com/user-attachments/assets/a0171540-50be-4c18-bb87-420b2d3723ee" />    <img width="1918" height="1017" alt="image" src="https://github.com/user-attachments/assets/69fdeac2-bb88-41d9-abe7-35880382f4ae" />

5. snapshot.png - the VirtualBox Snapshots view showing your snapshot listed

<img width="750" height="550" alt="image" src="https://github.com/user-attachments/assets/14901dd9-4388-4fe2-aa28-381c37a4897e" />

# My Debian 13 Lab VM

## VM identity
- VM name (in VirtualBox): debian
- Hostname (inside Debian): debian-lab
- Debian version (from `cat /etc/debian_version`): 13.6
- Kernel version (from `uname -r`): 6.12.107+deb13-amd64

## Allocated resources
- CPU cores: 2
- RAM: 4096
- Disk size: 30 GB
- Network mode: NAT (default)

## User account
- Username: john
- Root account: disabled
- Sudo works: yes

## Desktop environment
- GNOME

## Guest Additions
- Installed: yes
- Version (from `VBoxClient --version` in the VM): 7.2.6r172322

## Snapshot
- Snapshot name: clean-install-guest-additions
- Date taken: 1.9.2026

## What worked, what didn't
Debian asennus oli alkuun tuttua, olen asentanut virtuaalikoneita ennenkin. Kuitenkin debian käynnistyksessä oli ongelmia, debian aloitti install osion uudestaan käynnistyksen yhteydessä. Sain uudestaan kokeilemalla asennettua. Jos asentaisin vielä uudestaan niin tarkistaisin ja poistaisin iso tiedoston ennen kuin viimeistelee asennuksen.

## Findings
Debian linux on toimintakunnossa.
## Issues and how I resolved them
Asennuksessa hieman vastoinkäymisiä. 
