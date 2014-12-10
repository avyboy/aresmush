---
layout: page
title: Install the Game
subtitle: 
group: tutorials
nav_order: 4
---
{% include JB/setup %}

# Install the Game

AresMUSH lives on [GitHub](https://github.com/lynnfaraday/aresmush), a popular online source code control system.  GitHub is the place to get the Ares code, see a history of changes, and report issues.

## Your Own Ares (Optional)

You may wish to start out by creating your own semi-independent version of Ares (called a 'fork' in GitHub lingo).  This is optional, but recommended because:

* It can serve as a backup location for your custom code and configuration.
* It will be easier if you need a lot of custom code.
* It will be easier for you to handle upgrades.
* It will be easier for you to get code help if you later need it.

> **Note:** GitHub's projects are public unless you pay for a 'pro' account.  Sharing your code is in line with the spirit of Ares, but if making your code public gives you heartburn, skip to the next section.

Here is what you do to create your own Ares version.

1. Create an account on [Github](https://www.github.com).
2. Browse to the main [AresMUSH repository](https://github.com/lynnfaraday/aresmush).

    ![git]({{site.siteroot}}assets/git.png)

3. Click the "Fork" button (near the top right).
    
    You are now the proud owner of your own version of AresMUSH.  You can tell that you're on your version by looking at the repository name near the upper left.  The main Ares code is lynnfaraday/aresmush.  Yours will be something like  YOURUSERNAME/aresmush.    
4. On the right, you should see a 'clone URL'. Copy this; you will need it in a minute.

## Get the Code

On your [MUSH server shell]({{site.siteroot}}tutorials/server-connect.html), type the following command:

    git clone <clone URL>

If you created your own Ares fork (above), your clone URL will be something like:  *https://github.com/YOURUSERNAME/aresmush.git*.   

Otherwise use *https://github.com/lynnfaraday/aresmush.git*

The game will be put into a directory named "aresmush".

# Next Step

Next we'll do some [Basic Configuration]({{site.siteroot}}tutorials/basic-config.html).