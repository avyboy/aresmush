---
layout: page
title: Choosing a Host
subtitle: 
group: tutorials
nav_order: 4
---
{% include JB/setup %}

# Choosing a Host

AresMUSH has a couple installation requirements above and beyond what Penn and Tiny need.

* Ruby
* Git

Before selecting a MUSH host, you should check to be sure that these things are supported or can be installed.  Here is a list of MU hosts that are known to offer Ares-compatible hosting packages.  

> *Note!* This is not meant to be an endorsement of any particular host.

*TODO Coming Someday - MU host list*

# Connecting to the Server

Once you have a hosting account set up, you will need to connect to the server directly.  Typically this is done with the 'ssh' or 'telnet' programs (ssh is recommended because it is more secure, like using https in your web browser).  

**On a Mac**

1. Open Terminal.
2. Type 'ssh &lt;username&gt;@&lt;hostname&gt;' or 'telnet &lt;hostname&gt;'.
3. Enter your username (if needed) and password.

**On a PC**

You may be able to run 'telnet &lt;hostname&gt;' from the command prompt, but it would probably be easier to install a telnet or SSH program.  [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/) and [WinSCP](http://winscp.net/eng/docs/free_ssh_client_for_windows) are easy to use and free.  Just enter your host information in the program and connect.
