---
layout: page
title: About AresMUSH
tagline: 
---
{% include JB/setup %}

AresMUSH is a new breed of MUSH server in development.  From a player's perspective, it's a sibling of PennMUSH and TinyMUX.  From an admin's perspective, it is something completely different.

Ares is designed with three goals in mind:

# Make it Easier to Create a Game
There's an old joke for folks wanting to create a MUSH:  "Step 1: Find a coder."  It's true, but silly.  Coding should be an afterthought, not your primary concern.  The ultimate goal for Ares is to provide a complete [MUSH in a box](/features/turnkey.html) that can be installed and configured by people with no prior code experience.

# Make it Easier to Play
Ares is designed to offer a familiar experience to both Penn and TinyMUX players, so experienced players will feel right at home.  At the same time, it tries make the [commands](/features/commands.html) more approachable to new players.  It also offers a number of [player-centric features](/features/littlethings.html) to make life easier.

# Make it Easier to Code
Some games will need advanced customizations or theme-specific code.  Traditional MUSH softcode is hard to learn and work with, and the server hardcode is difficult or impossible to change.  Ares uses a high-level programming language (Ruby), and a [plugin system](/features/plugins.html) to make coding easier, more flexible, and more pleasant.

# More Info

Read more about the [Ares features](/features/) to learn what's cool for players and admins.

# Updates

<ul class="posts">
   {% for post in site.posts %}
     <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
   {% endfor %}
</ul>
