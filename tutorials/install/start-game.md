---
layout: page
title: Start the Game
subtitle: 
group: tutorials
nav_order: 4
---
{% include JB/setup %}

# Start the Game

Now you're ready to start the game for real.  From your [MUSH server shell]({{site.siteroot}}tutorials/install/server-connect.html), type:

    cd aresmush (if you aren't there already)
    bin/startares

> The important difference between 'devstart' and 'startares' is that the latter will continue to run even after you log off.  That is what you want to use for normal operation.

# Starting After Reboot

You'll want to make sure that your game restarts if the machine is ever rebooted.  The exact instructions will vary depending on your machine's operating system.  Please consult your system documentation for details.

> For many installs, adding /home/yourusername/aresmush/bin/startares& to the machine's /etc/rc.local file can do the trick.  This requires admin access to the machine.

# Next Steps

The next step is to [Customize the Game]({{site.siteroot}}tutorials/install/customize-game.html)
