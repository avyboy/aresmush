---
layout: page
title: Setting Up Ares with MongoLab
subtitle: 
group: tutorials
nav_order: 4
---
{% include JB/setup %}

Here are step-by-step instructions for setting up Ares with [MongoLab](https://mongolab.com/), a cloud hosting service for MongoDB.

1. Create a MongoLab account.  

2. Click 'Create New' to create a new db.

    ![create new]({{site.siteroot}}assets/mongo1.png)

3. Choose the options for your db.

    * Choose a provider you like (it doesn’t matter).
    * Choose a location close to your MU* server (if you know, if not don't worry too much).
    * Choose “single-node’ plan.
    * Choose 'sandbox (free)'.
    * Enter a db name, like  "mymush_db".

    ![create new]({{site.siteroot}}assets/mongo2.png)

4. Back at the dashboard, select your new db.

    ![create new]({{site.siteroot}}assets/mongo3.png)

5. You should see an alert telling you to create a user.  Click on that to create a user so the MUSH can talk to the dabase.  Don't use the same user and password as your MongoLab account for security reasons.
 
    Note: This same screen also shows you the hostname information, which you will need later when configuring the MUSH.

    ![create new]({{site.siteroot}}assets/mongo4.png)

6. If you want multiple database admins, you can create a second account user under Account -> Account Users -> Add Account User.  Give that person their own username and password, and they'll be able to log in and manage the database too.

You're all set!   You will need the username, password, db name and hostname when configuring Ares, so make a note of them.

# Next Step

Once your database is ready, the next step is to [Install The Game]({{site.siteroot}}tutorials/install-code.html)
