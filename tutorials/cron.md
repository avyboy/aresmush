---
layout: page
title: Cron
subtitle: 
group: tutorials
nav_order: 4
---
{% include JB/setup %}

# Cron

The cron system handles things that run periodically, like the weekly cookie awards or nightly healing code.  With a cron job, you can specify the date, day of week, hour and minute when something gets done.  

> Important!  In the cron configuration, comment out the pieces you're not using, but be careful - if you comment out hour and minute it will run EVERY hour and EVERY minute.  Probably not what you want.

Here are a few common examples.  

> All times use the MUSH server time.

A monthly task - runs on the 1st of every month at midnight:

    cron:
        date: 1
        #day_of_week: Sat
        hour: 00
        minute: 00

A weekly task - runs every Saturday at 9pm (2100 hours):

    cron:
        #date: 1
        day_of_week: Sat
        hour: 21
        minute: 00

A daily task - runs every day at 3am (0300 hours):

    cron:
        #date: 1
        #day_of_week: Sat
        hour: 03
        minute: 00

An hourly task - runs at the top of every hour:

    cron:
        #date: 1
        #day_of_week: Sat
        hour: 03
        minute: 00