---
layout: page
title: Localization
subtitle: International MUSHes
group: features
---
{% include JB/setup %}

Ares supports translation files, which allow you to translate the game into other languages.  Currently only English is supported, but it is hoped that people will contribute translations for other languages as time goes on.

    en:
        welcome: Welcome to AresMUSH!
        chars_connected:
            zero: "No characters connected."
            one: "One character connected."
            other: "%{count} characters connected." 
    de:
        welcome: "Wilkommen bei AresMUSH!"
        chars_connected:
            zero: "Keine spieler angeschlossen."
            one: "Ein spieler angeschlossen."
            other: "%{count} spieler angeschlossen."
        

You can also localize things like date and time formats.

The commands themselves are not translated, but the [Shortcuts]({{site.siteroot}}features/shortcuts.html) system allows you to define localized command names for commands and switches.

It would be possible to take the localization even further, but I wanted to test the waters before putting a lot more work into it.
