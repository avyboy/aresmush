---
layout: page
title: Installing the Database
subtitle: 
group: tutorials
nav_order: 4
---
{% include JB/setup %}

# Installing the Database

Penn and Tiny store their data in a single file, but Ares uses a real database: MongoDB.  Most of you are probably familiar with SQL databases.  MongoDB is similar, but without the SQL.  Because the database is seperate from the game itself, you have a couple options for how to install it.

## Cloud Hosting

Cloud hosting is the best option for most games, good for people with limited server experience and anyone who just wants something quick and easy.  

With cloud hosting, your data lives on a special database server in the cloud.  There's a nice graphical interface, making it easy to set up and manage your DB.  Many offer automatic daily backups and easy restores, keeping your data safe.  Since your data and game live on different servers, you have a slightly higher chance for lag and downtime, but that's a small price to pay for the ease of administration.

There are several MongoDB cloud hosting services.  I've had good experience with MongoLab.  It's simple, fast, and free. Detailed instructions for setting up your game with MongoLab can be found below.

## Self-Install

If you have the technical know-how and sufficient permissions on your MU server, you can install MongoDB on the server yourself.  See the [MongoDB website](http://docs.mongodb.org/manual/installation/) for help.

# Creating the Ares DB

No matter which host you choose, you'll need to create the Ares DB using the same basic steps.

1. Create the database.
2. Make it private.
3. Create a user who can access it.

For detailed instructions specific to your host, see the following articles:

* [Setting up Ares with MongoLab]({{site.siteroot}}tutorials/db-mongolab-setup.html).
* *TODO - Shell commands coming eventually*

# Configuring the Game

TODO - Coming Soon







