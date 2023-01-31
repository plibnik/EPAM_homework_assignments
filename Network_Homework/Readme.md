## Linux Networking Homework
* [Task 1](#task-1)
* [Task 2](#task-2)
* [Task 3](#task-3)
* [Task 4](#task-4)
* [Task 5](#task-5)
* [Task 6](#task-6)
* [Task 7](#task-7)
* [Task 8](#task-8)


The tasks are illustrated with multiple screenshots in this [Network_Homework](https://github.com/plibnik/EPAM_homework_assignments/tree/main/Network_Homework) folder.

My server (server1) was located in Oracle Virtualbox (I've added a NIC to my PC, so I had 3 Ethernet interfaces: 2 built-in NICs on Intel deskop motherboard, to each of clients, and one Intel PRO/100S to external Internet router. So I just briged them all to VM, and my Server1 had all the interfaces it needed.
My clients were hardware boxes, with one built-in NIC and one added PCI NIC (RTL8139 and Compex 100) each.

## Task 1

I've configured static IP's on all interfaces.
	
## Task 2

I've configured *dhcpd* on my server, it successfully provided IPs to client1 and client2. I checked on clients and in *journalctl*.

## Task 3
Server could ping both clients. Clients could ping each other through dedicated 172.16 (Net4) network. Clients could not ping each other through server-facing interfaces (obviously, they had no routes and ipv4 routing was not enabled on the server anyway).

## Task 4
I've added interface aliases to loopback "lo:" -- "lo:0" and "lo:1". And configured the routes. They worked.

## Task 5
Pics of subnet mask calculation on paper are in screenshot 25. (I'll add an hyperlink later).
Then I removed routing added in task 4 and added an aggregated route instead.

## Task 6
Actualy it mostly worked out of the box, but in my sysadmin days I did configure SSHD binding to interfaces -- ListenAddress, PermitRootLogin, DenyUsers, GatewayPorts, AuthenticationMethods, UseDNS (you can't be spoofed if you don't use it) etc from sshd_config.

## Task 7
I've configured the firewall (first using the simple ufw -- ufw enable, ufw status, ufw deny... there are screenshots of it). It blocked SSH for client2 while allowing it for client1.

Then I discovered that ufw does not support ICMP!
I had to scrap ufw and to implement iptables firewall.
I've tested that client2 could ping 172.17.28.1 but not 172.17.38.1 -- connectivity changed (pings stopped going thru) after I added the last firewall rule.

## Task 8
As I didn't configure Internet access in Task 3, I didn't have to delete these records.
Yet I've configured NAT (88,9 ping loss on picture 45 is the following: I've started "ping 8.8.8.8" on client2 and THEN entered the -j MASQUERADE rule on server1. Also see picture 42: I delete the masquerade rule, pings to 8.8.8.8 stop going; I add it back -- they resume going.

