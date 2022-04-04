# Nmap

## Introduction

When it comes to hacking, knowledge is power.
The more knowledge you have about a target system or network, the more options you have available.
This makes it imperative that proper enumeration is carried out before any exploitation attempts are made.

Say we have been given an IP (or multiple IP addresses) to perform a security audit on.
Before we do anything else, we need to get an idea of the "landscape" we are attacking.
What is means is that we need to establish which services are running on the targets.
For example, perhaps one of them is running a webserver, and another is acting as a Windows Active Directory Domain Controller.
The first stage in establish this "map" of the landscape is something called port scanning.
When a computer runs a network service, it opens a networking construct called a "port" to receive the connection.
Ports are necessary for making multiple network requests or which tab is loading which web page.
This is done by establishing connections to the remote web servers using different ports on your local machine.
Equally, if you want a server to be able to run more than one service (for example, perhaps you want your web server to run both HTTP and HTTPS versions of the site), then you need some way to direct the traffic to the appropriate service.
Once again, ports are the solution to this.
Networking connections are made between two ports - an open port listening on the server and a randomly selected port on your own computer.
For example, when you connect to a web page, your computer may open port 49534 to connect to the server's port 443.

![Nmap](./img/nmap.png) 

As in the previous example, the diagram shows what happens when you connect to numerous websites at the same time.
Your computer opens up a different, high-numbered port (at random), which is used for all its communications with the remote server.

Every computer has a total of 65535 available ports; however, many of these are registered as standard port.
For example, a HTTP Web Service can nearlyy always be found on port 80 of the server.
A HTTPS Web Service can be found on port 443.
Windows NETBIOS can be found on port 139 and SMB can be found on port 445.
It is important to note; nowever, that especially in a CTF setting, it is not unheard of for even these standard ports to be altered, making it even more imperative that we perform appropriate enumeration on the target.

If we don't no know which of these ports a server has open, then we do not have to hope of successfully attacking the target;thus, it is crucial that we begin any attack with a port scan.
This can be accomplished in a variety of ways – usually using a tool called nmap, which is the focus of this room.
Nmap can be used to perform many different kinds of port scan – the most common of these will be introduced in upcoming tasks; however, the basic theory is this: nmap will connect to each port of the target in turn.
Depending on how the port responds, it can be determined as being open, closed, or filtered (usually by a firewall).
Once we know which ports are open, we can then look at enumerating which services are running on each port – either manually, or more commonly using nmap.

So, why nmap? The short answer is that it's currently the industry standard for a reason: no other port scanning tool comes close to matching its functionality (although some newcomers are now matching it for speed).
It is an extremely powerful tool – made even more powerful by its scripting engine which can be used to scan for vulnerabilities, and in some cases even perform the exploit directly! Once again, this will be covered more in upcoming tasks.

## Nmap Switches

Like most pentesting tools, nmap is run from the terminal.
There are versions available for both Windows and Linux. For this room we will assume that you are using Linux; however, the switches should be identical.

Nmap can be accessed by typing `nmap` into the terminal command line, followed by some of the "switches" (command arguments which tell a program to do different things) we will be covering below.

All you'll need for this is the help menu for nmap (accessed with `nmap -h`) and/or the nmap man page (access with `man nmap`).
For each answer, include all parts of the switch unless otherwise specified. This includes the hyphen at the start (`-`).

## Overview

When port scanning with Nmap, there are there are three basic scan types. These are:

- TCP Connect Scans (`-sT`)
- SYN "Half-open" Scans (`-sS`)
- UDP Scans (-sU)

Additionally there are several less common port scan types, some of which we will also cover (albeit in less detail). These are:

- TCP Null Scans (`-sN`)
- TCP FIN Scans (`-sF`)
- TCP Xmas Scans (`-sX`)

Most of these (with the exception of UDP scans) are used for very similar purposes, however, the way that they work differs between each scan.
This means that, whilst one of the first three scans are likely to be your go-to in most situations, it's worth bearing in mind that other scan types exist.

## TCP Connect Scans

To understand TCP Connect Scans (`-sT`), it's important that you're comfortable with the *TCP three-way handshake* 

























