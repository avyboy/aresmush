---
layout: page
title: Server Setup
subtitle: 
group: tutorials
nav_order: 4
---
{% include JB/setup %}

If you are a server admin, have sufficient permissions on your own MUSH host, or can talk your MUSH host admins into installing this for you - here's how to set up a server to support AresMUSH on Ubuntu Linux.  If you have a different operating system, the general steps will be the same but you'll have to find the corresponding commands.

# Install Curl

The Ruby installation requires the Curl file transfer package.

> This might already be installed on your server.

    sudo apt-get install curl

# Install Ruby

The best way to install Ruby is using the Ruby version Manager.

Follow the instructions at [Install RVM](https://rvm.io/rvm/install).

Once RVM is installed, you can install and use a particular version of ruby:

    rvm install 2.0.0
    rvm use 2.0.0

# Install Git

The Git version control client can be installed as a package.

    sudo apt-get install git

