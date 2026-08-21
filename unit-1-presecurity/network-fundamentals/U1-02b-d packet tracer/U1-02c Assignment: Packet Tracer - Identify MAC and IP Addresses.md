# U1-02c Assignment: Packet Tracer - Identify MAC and IP Addresses

**Date:** 2026-08-19

**Source:** U1-02c Assignment: Packet Tracer - Identify MAC and IP Addresses

**Environment:** Packet Tracer

## Goal
What I was trying to do.

## Steps
### Part 1: Gather PDU Information for a Local Network Communication
<img width="400" height="307" alt="image" src="https://github.com/user-attachments/assets/ebc494a4-f4f4-4ce3-b16a-d81928f65ca8" />

ping 172.16.31.2 komennon käyttöä host 172.16.31.3 koneella.

<img width="487" height="372" alt="image" src="https://github.com/user-attachments/assets/6042b002-c733-4f0a-aa91-b292083f5108" />

ping 172.16.31.2 uudestaan mutta simulation mode käytössä. Ilmestyy PDU.

<img width="450" height="350" alt="image" src="https://github.com/user-attachments/assets/611da153-bff4-4e1b-b166-4572ad64fe74" />

PDU:ta painamalla saa enemmän tietoa, OSI model ja Outbound PDU Details

<img width="387" height="557" alt="image" src="https://github.com/user-attachments/assets/460e0ffc-cbbb-44c6-a993-45322e9ef6bb" />

PDU:n siirtyminen laitteelta toiselle, jokaisesta kohdasta koostuu oma PDU omilla tiedoillaan. Eri PDU:t ja niiden tiedot löytyvät alla olevasta taulukosta, paikallinen verkko.

| **At Device** | **Src MAC** | **Dest. MAC** | **Src IPv4** | **Dest IPv4** |
|---|---|---|---|---|
| 172.16.31.3 | 0060.7036.2849 | 000C:85CC:1DA7 | 172.16.31.3 | 172.16.31.2 |
| Switch 2 | 0060.7036.2849 | 000C:85CC:1DA7 | N/A | N/A |
| 172.16.31.2 (in)  | 0060.7036.2849 | 000C:85CC:1DA7 | 172.16.31.3 | 172.16.31.2 |
| 172.16.31.2 (out) | 000C:85CC:1DA7 | 0060.7036.2849 | 172.16.31.2 | 172.16.31.3 |

Kun PDU saavuttaa määränpään, se pystyy kulkemaan takaisin. Outbound PDU:ssa osoitteet ovat päinvastaiset, koska liikenne kulkee takaisin alkuperäiselle lähettäjälle.
Palasin takaisin Realtime mode
### Part 2: Gather PDU Information for a Remote Network Communication
Käynnistin Command Promt uudestaa 172.16.31.3 koneella ja käytin komentoa ping 10.10.10.2. Sain uuden PDU:n.

What device and interface has the destinatipn MAC address that is shown?

MAC osoite 00D0.BA8E.741A kuuluu reitittimen liitännälle FastEthernet1/0.

Alla olevasta taulukosta löytyy PDU siirtymistä etäverkossa.

| **At Device** | **Src MAC** | **Dest. MAC** | **Src IPv4** | **Dest IPv4** |
|---|---|---|---|---|
| 172.16.31.3 | 00D0:D311:C788 | 00D0:BA8E:741A | 172.16.31.3 | 10.10.10.2 |
| Switch 2 | 0060.7036.2849 | 00D0:BA8E:741A | N/A | N/A |
| Router (in) | 0060.7036.2849 | 00D0:BA8E:741A | 172.16.31.3 | 10.10.10.2 |
| Router (out) | 00D0.588C.2401 | 0060.2F84.4AB6 | 172.16.31.3 | 10.10.10.2 |
| Switch 1 | 00D0.588C.2401 | 0060.2F84.4AB6 | N/A | N/A |
| Access Point | N/A | N/A | N/A | N/A |
| 10.10.10.2 | 0060.2F84.4AB6 | 00D0.588C.2401  | 10.10.10.2 | 172.16.31.3 |

| **At Device** | **Src MAC** | **Dest. MAC** | **Src IPv4** | **Dest IPv4** |
|---|---|---|---|---|
| 10.10.10.2 | 0060.2F84.4AB6 | 00D0.588C.2401 | 10.10.10.2 | 172.16.31.3 |
| Access Point | N/A | N/A | N/A | N/A |
| Switch 1 | 0060.2F84.4AB6 | 00D0.588C.2401 | N/A | N/A |
| Router (in) | 0060.2F84.4AB6  | 00D0.588C.2401 | 10.10.10.2 | 172.16.31.3 |
| Router (out) | 00D0:BA8E:741A | 0060.7036.2849 | 10.10.10.2 | 172.16.31.3 |
| Switch 2 | 00D0:BA8E:741A | 0060.7036.2849 | N/A | N/A |
| 172.16.31.3 | 00D0:BA8E:741A | 0060.7036.2849 | 10.10.10.2 | 172.16.31.3 |

### Reflection Questions
Answer the following questions regarding the captured data:

1.  What different types of cables/media were used to connect devices?

Copper straight-trough, Fiber, Wireless
3. Did the cables change the handling of the PDU in any way?

4. Did the wireless Access Point do anything to the PDUs that it received?

5. Was PDU addressing changed by the access point?

6. What was the highest OSI layer that the Access Point used?

7. At what Layer of the OSI model do cables and access points operate?

8. When examining the PDU Details tab, which MAC address appeared first, the source or the destination?

9. Sometimes PDUs were marked with red Xs while others had green check marks. What is the significance of these markings?

10. Every time that the PDU was sent between the 10 network and the 172 network, there was a point where the MAC addresses suddenly changed. Where did that occur?

11. Which device uses MAC addresses that start with 00D0:BA?

12. What devices did the other MAC addresses belong to?

13. Did the sending and receiving IPv4 addresses change in any of the PDUs?

14. When you follow the reply to a ping, sometimes called a pong, what happens to the source and destination addresses?

15. Why do you think the interfaces of the router are part of two different IP networks?

16. Which IP networks are connected by the router?

## Findings
What I learned / what the output told me.

## Issues and how I resolved them
Problems encountered, fixes applied.

## References
Links to docs, write-ups, or related notes.
