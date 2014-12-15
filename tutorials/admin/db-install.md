---
layout: page
title: Installing the Database
subtitle: 
group: tutorials
nav_order: 4
---
{% include JB/setup %}

# Installing the Database

Penn and Tiny store their data in a single text file, but Ares uses a real database: MongoDB.  Most of you are probably familiar with SQL databases.  MongoDB is similar, but without the SQL.  Using a standard database makes it easy to get at your data, make backups, or even integrate it with a website.

Because the database is separate from the game itself, you don't have to put your database on the same server as the MUSH.

## MongoLab

MongoLab is a cloud database host that is simple and free, making it a good choice for hosting your Ares database.  Your data lives on a database server in the cloud.  There's a nice graphical interface for managing your DB.

See [Setting up Ares with MongoLab]({{site.siteroot}}tutorials/admin/db-mongolab-setup.html) for detailed installation instructions.

> Full disclosure:  By having your database on a different server, there is a small chance of increased lag (if there's a bottleneck between the servers) or added downtime (because both your servers will have different maintenance windows).  But it's still the best option for anyone with limited server admin experience, or anyone who just wants something quick and easy.

## Self-Install

If you don't want to use MongoLab, you can certainly use a different cloud host.  [MMS](https://mms.mongodb.com) looks promising, but I haven't used them.  You can even set up MongoDB on the same server as your MUSH if you have the technical know-how and sufficient permissions. 

If you use one of these options, you will need to:

1. Install MongoDB or select a host that already has it installed.
2. Create the Ares database.
3. Make it private.
4. Create a user who can access it.

See the [MongoDB website](http://docs.mongodb.org/manual/) for help.

# Next Step

Once your database is ready, the next step is to [Install The Game]({{site.siteroot}}tutorials/admin/install-code.html)




