---
layout: page
title: Default Database
subtitle: 
group: tutorials
nav_order: 4
---
{% include JB/setup %}

# Default Database

Ares comes with a default database that helps the game to be fully-functional out of the box.

## System Characters

There are a couple system characters that serve special functions.  You can rename them, but you can't delete them or change what they do.

* Headwiz (role: admin) - the master admin account.
* System (role: admin) - used for automated bbposts, mails and such.

There's also a stock 'Builder' character for your convenience, although anyone with the admin or builder roles can build things.

> All system characters have the default password "change_me!".  Please change it to something secure at your earliest convenience using the 'password/rest' command in-game.

## Guests

The database also includes several guest characters, Guest-1 through Guest-4, each with a default password of 'guest'.  You can rename these guests to whatever you like.

Ares looks for the 'guest' role when someone connects as a guest; the name doesn't matter.   So you can add new guests by creating a character and assigning them the 'guest' role.

## Rooms

The default DB also includes several rooms.  You can rename them, but their basic function cannot change (i.e. the welcome room will always be where new characters start no matter what you call it).

* Welcome Room (where new players begin)
* OOC Center (where people go when they travel OOC)
* IC Start (the default IC starting location after chargen)

> Out of the box, Ares does not support multiple IC start locations for characters.  You can get around this by writing custom code, or simply by using the IC Start room as a gateway room with exits to the various starting locations.

## Channels

There are three channels by default.  You can rename, configure or delete them and make new ones using the channel admin commands in-game.  (ahelp channels)

* Chat (public)
* Questions (public)
* Admin (locked to admin)

> Why is it "Chat" instead of the more traditional "Public"?  To discourage accidental mavs of pages to the public channel.

## Bulletin Boards

The default DB comes with two bulletin boards.   You can rename, configure or delete them and make new ones using the BBS admin commands in-game. (ahelp bbs)

* Announcements
* Admin (locked to admin)

# Next Step

Now that you have the code, the next step is to [Start the Game]({{site.siteroot}}tutorials/start-game.html)


