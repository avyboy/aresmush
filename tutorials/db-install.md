---
layout: page
title: Installing the Database
subtitle: 
group: tutorials
nav_order: 4
---
{% include JB/setup %}

# Installing the Database

Penn and Tiny store their data in a single file, but Ares uses a real database: MongoDB.  Most of you are probably familiar with SQL databases.  MongoDB is similar, but without the SQL.

You have several options for your database.

* Use cloud hosting.  (difficulty: easy)
* Find a MU* host that offers MongoDB out of the box.  (difficulty: medium)
* Install MongoDB yourself on your server. (difficulty: hard)

# Cloud Hosting

Cloud hosting is the easiest option.  Your data lives on a special database server in the cloud.  There's a nice graphical interface, making it easy to set up and manage your DB.  Many offer automatic daily backups and easy restores, keeping your data safe.

The down side is that your data and game live on different servers, doubling the chances for lag and downtime.  Even so, the simplicity of administration makes this the best option for most games.

There are several MongoDB cloud hosting services.  I've had good experience with [MongoLab](https://mongolab.com/).  It's simple, fast, and free.  

See [setting up Ares with MongoLab]({{site.siteroot}}tutorials/db-mongolab-setup.html).

# MU* Hosts with Mongo

*My hope is to partner up with a MU\* hosting service that will offer Ares-specific plans with Mongo already set up.  If you know of anyone who might be interested in such a venture, contact faraday@aresmush.com.* 

# Install it Yourself

You can install MongoDB yourself, but it requires sufficient permissions on your MU* server and some technical know-how.  You will need to create an Ares database, set up permissions so that the DB is not public, and create a user for Ares to log in with. See the [MongoDB website](http://docs.mongodb.org/manual/installation/) for help.







