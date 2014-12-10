---
layout: page
title: Connecting to the Server
subtitle: 
group: tutorials
nav_order: 4
---
{% include JB/setup %}

# Connecting to the Server

A lot of Ares administration is done from the **server shell**.  This is an application that lets you send commands to the game server. You do not use your MUSH client to connect to the server; you need a different application that supports SSH/Telnet.

## Connection Information

No matter how you connect, you will need a few pieces of information provided by your MUSH host (typically sent to you when you set up an account):

* Host name (often something like yourgame.somehost.com)
* Username
* Password
 
## Connecting From a Mac

1. Open Terminal (comes with every Mac).
2. Type 'ssh &lt;username&gt;@&lt;host name&gt;' 
    If that doesn't work, you can try 'telnet &lt;host name&gt;'.
3. Enter your username (if asked) and password.
4. You will see a prompt where you can type commands.

## Connecting From a PC

On a PC, you'll need an app to help you out.  I've had good experience with [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/), a freeware program, but you can use just about app that supports SSH/telnet.  

> Note: WinSCP only allows limited command support, and won't work for this.

1. Download and run the PuTTY executable (just the basic PuTTY one; you don't need all the fancy variants).  
2. Enter the connection info:
    * Use your host name
    * Leave the port '22' (the default).
    * Connection type of SSH is recommended; you can try 'telnet' if it doesn't work.
4. Click Open.
5. Enter your username and password.
6. You will see a prompt where you can type commands.

# Next Step

Now that you have a host, the next step is to [Install the Database]({{site.siteroot}}tutorials/db-install.html)
