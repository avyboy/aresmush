---
layout: page
title: Basic Configuration
subtitle: 
group: tutorials
nav_order: 4
---
{% include JB/setup %}

# Basic Configuration

Next you need to configure a few bits of basic server information.  

## What Configuration Do I Use?

Before you actually do that, make sure you have the necessary information on hand.  Here's what you will need.

### Database Info

The database information was set during [Database Installation]({{site.siteroot}}tutorials/server-connect.html).   

> If you are using [MongoLab](http://www.mongolab.com), you can review this information by logging into your account and looking at your dashboard.  It will be shown in a connection string like this:  host:port/database_name.  For example: ds059170.mongolab.com:51970/footest

![create new]({{site.siteroot}}assets/mongo4.png)

* Host - The database server name.  *In the example above:  ds059170.mongolab.com*
* Port - From your database provider.  *In the example above: 51970*
* Database - The name of the database you created.  *In the example above: footest*
* Username / Password - The user/password you created.  You can see the username in MongoLab dashboard under the "Users" tab, but you won't be able to see the password.  You can always reset it if you forget.

### Server Info

Some of the server information comes from your MUSH hosting provider.  They will assign you a host name and either assign or give you guidance on selecting a port number.

> If you're using MongoLab or another database cloud host, you will have *two* different host names, one for the database (e.g. ds059170.mongolab.com) and one for the game (e.g. mygame.somehost.com).  You only need the database one when you do the database configuration.  The MUSH host one is your main game address.

* Host name - The game server name.  *Example: mygame.somehost.com*
* Port - A 4-digit number that tells games apart on the same server.  *Example: 4201*

The rest of the server information is yours to choose.  This information is also sent to the AresMUSH games directory, to hopefully help people find your game.

* Name - Name for your MUSH.   *Example: Star Wars 7 MUSH*
* Category - Choose the category that best describes your game.
* Description - An ad or brief description of your game.
* Website - Your game's website.

## Running the Configure Command

From your [MUSH server shell]({{site.siteroot}}tutorials/server-connect.html), type:

    cd aresmush (if you aren't there already)
    bin/configure

It should do some setup stuff and then prompt you to enter the game configuration.  For example:

    Let's set up your database.  Please enter the requested information.
    Database host >

> You can run this command again later if you ever need to change the configuration.  You can also skip the command and just edit the configuration files in the game/config directory manually if you're comfortable doing that.

## Initialize Database

Now we will initialize the default database.  

> **IMPORTANT!  This will wipe out anything that's already in the database, so only use it when installing fresh.**

From your [MUSH server shell]({{site.siteroot}}tutorials/server-connect.html), type:

    cd aresmush (if you aren't there already)
    bin/init
    
You should see a whole bunch of spam as the game initializes, then messages telling you it's setting up various database objects, then a shutdown message.  For example:

    Clearing out AresMUSH::Character
    ...
    Creating start rooms.
    ...
    Install complete.
    2014-12-09 16:49:15 INFO - Shutting down. 

## Try It!

At this point, your game should be ready to go.  Try running it in 'developer' mode.

From your [MUSH server shell]({{site.siteroot}}tutorials/server-connect.html), type:

    cd aresmush (if you aren't there already)
    bin/devstart

You will see a whole bunch of messages print out, but after about a minute they'll stop and your game should be up and running.  

Try connecting to it via your favorite MUSH client.  Use the same hostname and port number you used in the server info configuration (e.g. mygame.somehost.com 4201).

> Note: The game will only stay running until you hit CONTROL-C or close down your connection.  This is a quick test, and not the usual way you run Ares.  Hit CONTROL-C to stop it when you're done.

If your game doesn't start, review the database.yml and server.yml files in game/config to ensure they're correct.  If none of that helps, see [Getting Help]({{site.siteroot}}tutorials/getting-help.html).

# Next Step

Find out more about what's in the [Default Database]({{site.siteroot}}tutorials/default-db.html).