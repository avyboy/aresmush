---
layout: page
title: Customize the Game
subtitle: 
group: tutorials
nav_order: 4
---
{% include JB/setup %}

# Customize the Game

The basic setup is the only *necessary* configuration to get a game up and running, but there is still a lot you can customize in Ares.  

## Config Files

AresMUSH configuration is stored in text files on the game server. 

### Editing Config

To configure the game, you're going to need to edit text files on the game server. You can connect to the [MUSH server shell]({{site.siteroot}}tutorials/server-connect.html) and use a command-line text editor like emacs, or use a FTP program like [WinSCP (PC)](http://winscp.net/eng/index.php) or [CyberDuck (Mac)](https://cyberduck.io/?l=en) to edit the server files.

### YAML Format

Most of the config files are in a special file format called [YAML](http://www.yaml.org/start.html), which is intended to be easily read by both humans and computers.  Here's what YAML looks like.

    # This is a section
    connect:
        # This is a simple text option.
        welcome_text: "Still under development."
        
        # This is an option that points to a file.
        welcome_screen: "game/files/connect.txt"
        
    # This is another section - notice how it lines up with the previous one.
    names:
        # This is an option that takes a list.  
        restricted:
            # Here is the list of names.  Lists use dashes, and 
            # notice how they line up.
            - gandalf
            - frodo

You can't use multiple lines of text in YAML files, but you can use %R's, ansi and other [format codes]({{site.siteroot}}tutorials/formatting.html) in most of the displayable items.

> **Important!** Indentation is very important in YAML files, and is probably the most common thing that can get messed up.  Another common mistake is to forget double quotes around a text string that contains special characters (like - or :).

### Updating the Game

Config changes don't actually take effect until you tell the game to look for them.  There are three important admin commands to help you manage configuration changes.

    load config - Reloads configuration
    load help - Reloads help
    load <plugin name> - Reloads code or templates

## Common Types of Customizations

There are a couple kinds of customizations you'll see over and over, so it would be good to mention them here.

### Commenting Stuff Out

Some configuration options will say something like: 'comment out if you don't want to use this'.   To *comment something out* simply means to put a # in front of the line.

Regular config option:

    welcome_text:  "Hello Ares."
    
Commented out:

    # welcome_text: "Hello Ares."

Don't comment things out willy-nilly; items that can be disabled will say so.

### Roles

Many plugins have commands that require special privileges to use.  This is done through the [roles]({{site.siteroot}}tutorials/roles.html) system, and you'll see various config options to specify what roles are allowed to use those special commands.  For example:

        # List roles that are allowed to manage bulletin boards.
        can_manage_bbs: 
            - admin
            # - another_role would go here

Most special things are locked to admins by default.  A few are locked to admins and builders.

### Cron Jobs

The cron system handles things that run periodically, like the weekly cookie awards or nightly healing code.  With a cron job, you can specify the date, day of week, hour and minute when something gets done.  See the [cron]({{site.siteroot}}tutorials/cron.html) tutorial for details.

    cookies:
        cron:
            #date: 1
            day_of_week: Sat
            hour: 21
            minute: 00

> Important!  In the cron configuration, comment out the pieces you're not using, but be careful - if you comment out hour and minute it will run EVERY hour and EVERY minute.  Probably not what you want.

## Admin Characters

From the MUSH login screen, create your very own admin character.

    create <name> <password>
    tos/agree (to acknowledge the terms of service when asked)

Now you have a character, but they're not an admin.

Login as Headwiz (password change_me!).  While you're here, change Headwiz's password.  Don't forget to do the same for the other system chars at some point.

    password <oldpassword>=<newpassword>

Now give your admin character super powers.

    role/add <name>=admin

Ares, by default, does not have different levels of admins (Wiz/Roy/Judge).  There are simply admins and non-admins.  But there is a rich [roles]({{site.siteroot}}tutorials/roles.html) system that you can set up to give you more fine-tuned control over who can do what.

## Game Config

Some configuration items apply to the entire game.  These options can be found in YAML files in the *aresmush/game/config* directory.  A couple things in particular you might wish to change:

* Language (locale.yml) - see [localization]({{site.siteroot}}tutorials/localization.html) for more info
* Date and Time formats (date\_and\_time.yml)
* Names you don't want people to use - like feature chars (names.yml)
* Line formats (skin.yml)

> Don't forget to reload the configuration using 'load config' on the game after changing config options.

## Plugin Config

Virtually all the code in Ares is a Plugin, even systems that are integral to the game like movement and poses.  Most plugins offer a variety of configuration options, found in YAML files within each plugin's config directories. The config files contain instructions explaining what the options do.  For example:

    game/plugins/cookies/config/config_cookies.yml
    
    # Maximum luck points you can achieve through cookies.
    max_luck: 5

Most plugins also have configuration for [help]({{site.siteroot}}tutorials/help.html) and [shortcuts]({{site.siteroot}}tutorials/shortcuts.html), but you shouldn't need to mess with those unless you're doing more advanced coding.

> Don't forget to reload the configuration using 'load config' on the game after changing config options.

## Game Files

Big blocks of text are kept in separate files, specifically in *game/files*.  They include:

* Login screen - note that in Ares you can use ansi and other [format codes]({{site.siteroot}}tutorials/formatting.html) on your login screen.
* Terms of Service - displayed to all new players and they must acknowledge it to play.  Can be disabled through the connect configuration.

## Templates 

Some plugins have templates that let you configure the way things are displayed.  Template files are kept in text files within each plugin's templates directories. For example:

    game/plugins/who/templates/who.erb  (template for the who list)
    game/plugins/who/templates/where.erb  (template for the where list)

Descriptions, who, mail and bulletin boards are all examples of systems that support customizable templates.

It's pretty easy to make simple tweaks to templates: moving stuff around or deleting things your game doesn't use.  But anything more fancy than that is going to involve some coding.  See the [templates]({{site.siteroot}}tutorials/templates.html) tutorial for more info.

> Don't forget to reload the configuration using 'load &lt;plugin name&gt;' on the game after changing a template.

# Next Step

That's it!  Enjoy your game!

You may wish to check out the more [advanced tutorials]({{site.siteroot}}tutorials/index.html) in the **Managing the Game** and **Coding for Ares** sections.

