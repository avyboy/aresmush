---
layout: page
title: Managing the Game
subtitle: 
group: tutorials
nav_order: 4
---
{% include JB/setup %}


# Managing the Game

TODO TODO TODO TODO

## Log Files

## Shutting Down

If you ever need to stop your game, the best way is to use the "shutdown" command in-game.

As a last resort if the game gets hung or something, you can kill the server process.

From your [MUSH server shell]({{site.siteroot}}tutorials/install/server-connect.html), type:

    ps -aux | grep startares

> If that command doesn't work, you'll need to consult your server help files to figure out how to list server processes.  

Hopefully you'll see something like this:

    lynn     **25742**  0.0  6.5 233656 69084 ?        Sl   06:29   0:04 ruby /home/lynn/.rvm/gems/ruby-2.1.5/bin/rake startares

The bold number in the second column is the process ID (25742).  You can use this number to kill the game (kind of like a Force Stop on your PC).

    kill -9 25742

## Database Backup and Restore

Install Mongo tools or pay MongoLab

Install MongoDB Shell:   http://docs.mongodb.org/manual/installation/

To backup/restore (latest from [MongoLab Instructions](http://docs.mongolab.com/backups/#dump-and-restore))

    % mongodump -h ds012345.mongolab.com:56789 -d dbname -u dbuser -p dbpassword -o dumpdir
    
    % mongorestore -h ds023456.mongolab.com:45678 -d dbname -u dbuser -p dbpassword dumpdir/*

## Forgot Headwiz Password                                       


