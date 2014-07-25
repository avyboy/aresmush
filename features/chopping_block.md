---
layout: page
title: Chopping Block
subtitle: Some features that didn't make the cut.
group: features
---
{% include JB/setup %}

While Ares attempts to recreate the PennMUSH/TinyMUX experience on the whole, a few features were deliberately left out for time, complexity or philosophical reasons.  If you find just can't live without them, please provide [Feedback]({{site.siteroot}}/feedback.html).

# Exit Aliases

Some MUSHes go a little wild with exit aliases.  An exit named "Front Door" would be accessible via "F", "FR", "DOOR", "FRONT", and who knows what else.

Ares only allows you to have a single exit name, which is shown in room descs next to the destination room name.  For example: 

    [R] Restaurant
    [O] Town Square

I'm sure there are some folks who will try to type "town" to go to the town square, but experience on my own PennMUSH games shows that they pretty quickly learn to just use the short names.  Omitting long exit names and aliases simplifies the building commands and the code.

# Reconnects

"How do I boot my extra connection?" is a common refrain on MUSHes.  Zombie connections, reconnects - it's a pain in the butt.  Ares doesn't do any of that.  When you reconnect, it kills your old connection.

As a consequence, you can't leave yourself logged in from multiple places at the same time.  I understand some people use this feature so they won't miss anything while they're switching computers, but they are decidedly in the minority.  Allowing simultaneous connections adds a lot of complexity to the codebase (and to a lesser extent the player commands).

# Dolist

I can imagine the admins now:  "OMG HOW WILL I LIVE WITHOUT DOLIST?"   Dolist is a necessary evil on Penn and Tiny because of the way they're structured, but Ares is different.  Think about when you commonly use a dolist.  Need to teleport a bunch of people?  

     @dolist a b c=@tel ##=wherever
     
But why should that be necessary?  Wouldn't it be much easier if the teleport command just let you do that directly?

     tel a b c=wherever
     
Ares commands are designed to work on lists where it makes sense, eliminating the need for dolists.  At least, that's the theory.  Maybe I missed some cases; if so, just provide an example in [Feedback]({{site.siteroot}}/feedback.html).

# Force

In Ares, admins cannot force players to execute commands, mainly because I think it's creepy.  Admin-only commands should exist to do the things you need to do.  As with dolist, if you find something missing, just provide [Feedback]({{site.siteroot}}/feedback.html).