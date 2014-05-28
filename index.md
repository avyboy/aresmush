---
layout: page
title: AresMUSH
tagline: 
---
{% include JB/setup %}

AresMUSH is a new breed of MUSH server.  From a player's perspective, it's a sibling of PennMUSH and TinyMUX.  From an admin's perspective, it is something completely different.

Here are some things that make Ares cool for players and admins.  Click on the links to learn more about each feature.

## What's Cool for Players

* **[Shortcuts](/shortcuts.html)**
* **[Commands](/commands.html)** - A simplified command set, with shortcuts for Penn and Tiny compatability.
* **[Day to Day](/daytoday.html)** - 

## What's Cool for Admins

## Updates

<ul class="posts">
   {% for post in site.posts %}
     <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
   {% endfor %}
</ul>
