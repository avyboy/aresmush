---
layout: page
title: Plugins
subtitle: No more softcode
group: features
---
{% include JB/setup %}

There is no distinction in Ares between 'hardcode' and 'softcode'.

Ares uses a central **engine** to handle extremely basic MUSH functionality, like configuration and connections.  Everything else – even things that are fairly basic, like poses and movement – is done using **plugins**.  

Ares comes out of the box with a number of plugins:

* Posing and Pages
* Rooms and Movement
* Who / Where
* Bulletin Boards
* Channels
* and more

But the real power of plugins is that you can add, modify or replace any plugin.  For example: A war MUSH might swap out the movement plugin for one that restricts movement based on action points during combat. A fantasy MUSH might swap out the description system with one that limits character descriptions based on what clothing items they had purchased.  These changes *replace* the standard plugins, so you don't end up with a hardcoded "who" and a softcoded "+who" on top of it.

# Plugin Code

Plugins do not use MUSHCode.  Instead they use a standard high-level language, [Ruby](http://www.tryruby.org). Ruby is a lot easier to learn than traditional MUSH softcode.  There are a lot more Ruby programmers than softcode programmers, as well as books and references on the subject. 

See the [tutorials]({{site.siteroot}}tutorials) for more information about plugin code and customization.