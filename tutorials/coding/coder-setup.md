---
layout: page
title: Advanced Coder Setup
subtitle: 
group: tutorials
nav_order: 4
---
{% include JB/setup %}


**TODO TODO TODO -- ROUGH DRAFT**

# Advanced Coder Setup

If you are intending to make extensive custom code changes to Ares, I highly recommend that you follow these instructions to set yourself up with a better coding environment.  It may take some extra effort at first, but trust me - it will make your life **so** much easier in the long run!




## Install Code Tools

Running the code locally on your PC to test it out before trying it live on the game is the safest thing to do!  That way you know that you're not going to break anything when you apply those changes to your game.

To do this, you'll need to install Ruby and Git locally on your PC.  Here are links that will help.

**On Windows**

* [Install Git](https://windows.github.com/)
* [Install Ruby](http://rubyinstaller.org/)

**On Mac**

* [Install Git](https://mac.github.com/).
* [Install HomeBrew](http://brew.sh/)
* Use HomeBrew to install Ruby:
<b></b>

    brew update
    brew install ruby

> **Note:** Although the Git installs provide graphical tools, the instructions here will focus on using the Git command line, because it's consistent no matter which tool you're using.

## Setup Test Database

You will want to repeat your [Database Installation]({{site.siteroot}}tutorials/install/db-install.html) to install an extra database for test purposes.  You can name it something like mymush_test.

This way, things you do on your local PC while testing won't impact the real game database.

## Setup Local Game

From a Git terminal on your PC, follow the same instructions for [Installing the Game]({{site.siteroot}}tutorials/install/install-code.html).  This will get you a local copy of the code, and run the database and server setup.

> **Note!**  When doing the setup, make sure to enter the database information for the **test db** not the real one.  And you'll need to use 'localhost' or '127.0.0.1' for your host name.

Use the 'bin/devstart' command to run the game locally. CONTROL-C or closing your terminal window should quit the game.

## Change and Push

* change local
* commit local
* push to remote
* pull from remote
