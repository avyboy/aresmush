---
layout: page
title: Install the Game
subtitle: 
group: tutorials
nav_order: 4
---
{% include JB/setup %}

# Install the Game

The next step is to install the game itself.  AresMUSH lives on [GitHub](https://github.com/lynnfaraday/aresmush), a popular an online source code control system.  GitHub is the place to get the Ares code, see a history of changes, and report issues.

## Your Own Ares (Optional)

You may wish to start out by creating your own semi-independent version of Ares (called a 'fork' in GitHub lingo).  This is optional, but recommended because:

* It can serve as a backup location for your custom code and configuration.
* It will be easier if you need a lot of custom code.
* It will be easier for you to perform upgrades.
* It will be easier for you to get code help if you later need it.

> **Note:** GitHub's projects are public unless you pay for a 'pro' account.  Sharing your code is in line with the spirit of Ares, but if making your code public gives you heartburn, skip to the next section.

1. Create an account on [Github](https://www.github.com).
2. Browse to the main [AresMUSH repository](https://github.com/lynnfaraday/aresmush).
3. Click the "Fork" button (near the top right).

    ![fork]({{site.siteroot}}assets/git_fork.png)

    You are now the proud owner of your own version of AresMUSH.  You can tell that you're on your version by looking at the repository name near the upper left.  The main Ares code is lynnfaraday/aresmush.  Yours will be something like  YOURUSERNAME/aresmush.
    
    ![repo name]({{site.siteroot}}assets/git_repo.png)
    
4. On the right, you should see a 'clone URL'. You will need this in a minute.

    ![clone]({{site.siteroot}}assets/git_clone.png)

## Get the Code

On your MUSH server shell, type the following command:

    git clone <clone URL>

If you created your own Ares fork (above), your clone URL will be something like:  *https://github.com/YOURUSERNAME/aresmush.git*.   Otherwise use *https://github.com/lynnfaraday/aresmush.git*

The latest version of AresMUSH will be put into a directory named "aresmush".

## Basic Configuration

Next you need to configure a few bits of basic server information, like your host and port number.

    cd aresmush
    bin/configure

You can run this command again later if you ever need to change the configuration.  You can also skip the command and just edit the configuration files in the game/config directory manually.

## Initialize Database

Now we will initialize the default database.  

> **IMPORTANT!  This will wipe out anything that's already in the database, so only use it when installing fresh.**

    cd aresmush (if you aren't there already)
    bin/init

## Try It!

At this point, your game should be ready to go.  Try running it in 'developer' mode.

    cd aresmush (if you aren't there already)
    bin/devstart

You will see a whole bunch of messages print out, but after a minute or so they'll stop and your game should be up and running.  Try connecting to it via your favorite MUSH client.

> Note: The game will only stay running until you hit CONTROL-C or close down your connection.  This is a quick test, and not the usual way you run Ares.  Hit CONTROL-C to stop it when you're done.

If your game doesn't start, review the database.yml and server.yml settings in game/config to ensure they're correct.  If none of that helps, see [Getting Help]({{site.siteroot}}tutorials/getting-help.html).

# Next Step

Find out more about what's in the [Default Database]({{site.siteroot}}tutorials/default-db.html).