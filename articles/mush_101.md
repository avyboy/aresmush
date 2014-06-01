---
layout: page
title: MUSH 101
subtitle: 
group: articles
---
{% include JB/setup %}

People don't often stumble into the MUSH community.  It's a fairly obscure hobby these days, and usually people are dragged in (sometimes kicking and screaming) by a veteran willing to show them the ropes.  Even so, this guide is intended to introduce the basics and arm you with just enough information to be dangerous... err, to get you started.

# What is a MUSH?

MUSHing blends elements of table-top role-playing games, creative writing, and improvisational acting for a unique online gaming experience.  

Like **table-top RPGs**, MUSHes have (virtual) character sheets, dice and rules.  There is a storyteller/GM helping the story along.

Like **creative writing**, MUSHes are fundamentally about telling a story.  A MUSH session will read a lot like a chapter in a novel.  The players are the authors in this collaborative tale.

Like **improvisational acting**, MUSHes are live and //without a script//.  The story develops on-screen in more-or-less real time.  You take on the role of your character in a more immersive way.

Side note: The terms MUSH and MUX are used pretty interchangeably for this style of gaming, and sometimes more generically referred to as MU*.  The difference is in the back-end game server, but for playing purposes it's mostly insignificant.

# Selecting a Theme

**Theme** is the word used to describe a game's central setting.  MUSH themes generally fall into one of the following categories:

* Based on a TV show, book series or movie.  (e.g. Star Wars, Battlestar Galactica, or Game of Thrones)
* Based on a tabletop RPG. (e.g. World of Darkness or Shadowrun)
* Based on a historical setting.   (e.g. Wild West or Roaring Twenties)
* Generic sci-fi or fantasy (e.g. superheroes or zombies)
* Wholly original in theme (these are rare)
* Not a game at all, but a social endeavor, using the MUSH medium as persistent, multi-user chatroom.

MUSHing is unfortunately a somewhat insular hobby. Advertising is done primarily through word-of-mouth and in-game advertising.  There is no authoritative list of MUSHes out there.  If you've found this article, chances are you either stumbled across a game already, or know someone who plays.  That's your best place to start.  Barring that, you can try a web search.

# Connecting to a Game

So you've found a game, and a somewhat cryptic-looking address:

    mush.aresmush.com port 7206

Technically you can connect to any MUSH with an old-fashioned telnet program, but don't!  The experience will be so painful you'll never want to come back. You should get a dedicated MUSH client.  There are many out there, but the premiere ones (all offering a free basic version) are:

* [SimpleMU](http://simplemu.onlineroleplay.com) - **Windows**
* [MUSH Client](http://www.gammon.com.au/mushclient) - **Windows**
* [Atlantis](http://www.riverdark.net/atlantis) - **Mac OSX**

Follow the instructions on your chosen client to enter the MUSH address, and connect.  You'll see a login screen with ASCII art, like this one:


                ___|                    |                  |
              \___ \\ \  \   / _ \  _ \ __|\ \  \   / _` | __|  _ \  __|
                    |\ \  \ /  __/  __/ |   \ \  \ / (   | |    __/ |
              _____/  \_/\_/ \___|\___|\__|  \_/\_/ \__,_|\__|\___|_|
                        +ss:      ___|                    _)
                     `=MMMMMd='  |      __| _ \   __|  __| | __ \   _` |
                       `mMMm`    |     |   (   |\__ \\__ \ | |   | (   |
                        dMMMN# \____|_|  \___/ ____/____/_|_|  _|\__, |
                       `NMMMMM/                                   |___/
           .`          `MMMMMMs
         :hMdo:`     `odMMMMMMy
        .NMMMMMMd+.  yomMMMMMMMNMs/hmmNmys+:.
       -NMMMMMMMMMMhymyNMMMMMMMMMMMMMMMMMMMMMs
      -NMMN+-oMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM/
      oMNy/```oMMMMMMMMMMMMMMMMMMMMMMMMMMMMmMMNy+
       `       :NMMMMMMMMMMMMMMMMMMMMMMMMM/ sNMMMd/`
                `NMMMMMMMMMMMMMMMh/--+MMMm`  `sNMNo/-`
                 :NMMMMMMMMMMMNh-     yMMMNo    .:oo:  .//os
                  -yNMMMNmMmy#        dMmNMo-:/+ossyhMMMMMMMMMMMMMMMM
                    /MMN` `       `..-+mMMNMNMMMMMMMMMMMMMMMMMMMMMMMMM
                     hMM:   ``.:oyhddmNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
       `           ``yMMhoyhhdmNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    ...---..`.--//oyymMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
    +------------------------------------------------------------------------+
    |                  mush.aresmush.com port 7206                           |
    | Use create <name> <password> to create a character.                    |
    | Use connect <name> <password> to connect to your existing character.   |
    +------------------------------------------------------------------------+


Most games have a Guest character that you can use if you just want to look around.  You connect to the Guest character by typing:

    connect guest guest

Congratulations!  You're now online.

# Commands - Interacting with the Game

Players use **commands** to interact with a MUSH.  A command is simply a line of text typed in the client and sent to the server.  The 'connect' command you just typed is one example.  The set of commands on a game is generally called **code**.  Different games have different commands.  Generally the **help** or **+help** command will list local commands and how to use them.

Some commands can be pretty complex.  Consider this coded display for an in-game space system from [http://www.trekmush.org/files/sguide.txt ATS Star Trek MUSH]

    --[Condensed Status Report]----------------------------------------------------
                Name: USS Lexington                  Class: Enterprise          
          Visibility: 100.000%                   Cochranes: 1293.724            
              Course: 0.000 0.000              Total Power: None                
               Speed: Stationary                  Velocity: Stationary          
      -------------------------------------------------------------------------------
      Antimatter:         1280.00/1280.00         tons: 100% [++++++++++++++++++##]
       Deuterium:        12800.00/12800.00        tons: 100% [++++++++++++++++++##]
         Reserve:            5.20/5.20            GW*H: 100% [++++++++++++++++++##]
      -------------------------------------------------------------------------------
          Beam Power: (None)
          Missile Power: (None)
      -------------------------------------------------------------------------------

# IC vs OOC - The Fourth Wall

MUSHing bridges two worlds - the **IC** (In-Character) world, which is the fictional world that the **characters** habit, and the **OOC** (Out-of-Character) world, which is inhabited by real people, aka the **players**.  

When you first log in to a MUSH, as a guest or new character, you are restricted to an OOC area of the game.  This area is geared towards tutorials, character setup, hanging out, and other actions that focus on the players more than the characters.  Later, you'll make up your own character and delve into the IC world.

Keeping a clear delineation between IC and OOC is important to avoid hard feelings and cheating.  

For example:  Tracy and I play on a MUSH together.  OOCly we are best friends.  ICly our characters are mortal enemies.  OOCly we chat about her character's latest plot to assassinate my character.  ICly my character has no idea what's coming, so I can't let my OOC knowledge influence how she acts, nor should I be put off by the fact that her character is out to get mine.  It's all IC.

A common saying in MUSHing is **ICA=ICC**. "IC Actions = IC Consequences" means that you must be prepared to accept the consequences of your character's IC actions.  This could be injuries, relationship issues, arrests or even death.

As in a tabletop RPG, **PC** means "Player Character" and **NPC** means "Non-Player Character".  PCs are analogous to the main cast on a TV show and NPCs are the extras.  In more practical terms, PCs are represented by named character objects (like avatars), and are controlled //directly// by a single player.  NPCs usually just hang out in the background, controlled //indirectly// by either a single player or the community at large.  

Side note: Recurring and/or prominent NPCs may be given character objects like PCs, at which point their status becomes more about how people view them than any practical difference.

# Communicating

As soon as you log in, you'll probably see people greeting you:

    <Newbie> Faraday says, "Welcome Guest!"
	
How do you talk back?

First off, it's important to know that there are different ways to communicate ICly and OOCly on a MUSH.  We'll cover IC communication later because Guest characters are (by their nature) exclusively OOC.  For now, let's focus on OOC communication.

MUSHes have **channels**, which are like public chatrooms.  Each channel has a purpose, and commonly there will be at least two on every game: a //Public// channel for general chit-chat, and a //Newbie// channel for answering questions from new players.  The channel name appears at the beginning of everything someone says on a channel:

    <Public> Faraday says, "Some MUSHes use <> for channel names."
    [Newbie] Chaos says, "Others use []."

Remember that channels are public, so comments made to a channel are seen by everyone who has subscribed to (or 'joined') that channel.

Talking on a channel uses different commands depending on the game server.  Usually there will be a primer when you log in.  If not, try one of these commands to say hello (using the first few letters of the channel name in place of 'pub'):

    pub Hello.
    +pub Hello.
   =pub Hello.

Another way to talk to someone OOCly is via **pages**.   Pages, like 'tells' or 'whispers' on a MMO, are private conversations.  You can page more than one person at a time, but only the people you page will see it.

    You type:   page Farday=Hi there!
    Faraday sees:   From afar, Guest says, "Hi there!"

Now you're equipped to chat with some of the folks on the game to see how friendly they are, and ask any questions you might have.  The traditional one is "What should I play?" 

Side note: Most games also have a **mail** system (sometimes named @mail or +mail) for leaving messages for players who aren't online.  Check out the in-game help files for details.

# Making a Character

Once you've had a look around as a Guest and decided to stay, you'll want to create your own character.  A character is a (text-based) avatar that allows you to interact fully with the game world.  It is your fictional alter-ego in the game's storyline.

Connect to the game, but this time use the 'create' command to create your own character:

    create <name> <password>

Names are usually just a single word.  It can be your character's first name, last name, or a nickname, but the important thing is that it be //IC//.  Naming yourself "MasterBlaster" on a serious historical game is going to put people off from the start.  

Side note:  Don't try to play Chewbacca on a Star Wars game, or Professor Xavier on an X-Man game right off the bat.  Most MUSHes have special rules for playing characters from the original source material.

Most games have a character generation system (Chargen for short) where you set up skills and stats.  To find it, you'll need to navigate through the MUSH "rooms" to get there.  You'll learn more about this in the next section.  Once you've found the right room, there should be instructions in the room, or a pointer to a web page that walks you through the skill system.  For example:

    In this room, you will set up some basic info about your character's background.
    
            +fullname <full name>
            +age <age>
            @sex me=<male or female>

Side note: many games allow you to play more than one character.  The other characters are called "alts".  The marvels of a MUSH client make it easy to have multiple characters logged in and playing at the same time.  It's a lot like having two chat windows open in an instant messaging program.  You can talk in one while waiting for the other to respond.

# MUSH Time

Time is an interesting concept on a MUSH, because the game is running 24/7.  On a macro level, most games operate at a 1:1 time ratio compared to real life.  That means that for every day that passes in the real world, a day passes in the in-game world as well.  If you want your character to have a baby, you're going to have to wait 9 real life months.  It's a good thing that MUSHes, like soap operas, can last for years!

Because most people can't be logged in around the clock, MUSHes incorporate the idea of **scenes** from acting and/or creative writing.  What you play is only a small portion of your character's actual life.  The rest happens **off-camera**.  You will often have to work with other players to sort out things that happened when one of you wasn't online.  You can even do a **backscene**, playing out something that you missed, but this is less common.  Most folks like to stay current with the "here and now".

Time during a scene is a more flexible, because characters act faster than their players can //type// their actions.  A big fight scene may span several hours OOCly but only represent a few minutes ICly.   Likewise, players can gloss over time passing in mid-scene, for example, hand-waving a long ride into town.  In this regard, MUSHes are a lot like tabletop RPGs.

Most games won't do anything drastic to your character when you're not online, but things can and do happen in the game world at all hours.  It's not unheard of to log in and discover that the town burned down or aliens invaded while you were offline!  Working around people who aren't actually online is an art form. You can't play someone else's character without their permission, so usually you'll have to concoct some excuse for why someone isn't around.  Can't find the doctor?  Maybe he's out on a house call.  Friend not around?  Maybe they got called into work, or for whatever reason you can't reach them on their cell phone.

Side note:  Although 1:1 is the de-facto standard for MUSH time ratios, some games opt for a faster ratio like 2:1 or even 3:1 to increase the pace at which events unfold.

# Telling the Story

Starting a scene on a MUSH first involves finding someone to play with.  Once you've been on a game for awhile, you'll develop IC and OOC friendships that will make this easier, but it can be tough out of the gate.  Fortunately, experienced players realize the predicament of new people and often go out of their way to seek //you// out.

    Hannah pages, "Care for a scene?"

Or someone might ask on the public channel:

    <Public> Hanna wonders if anyone's up for a scene?

Then all you have to do is say 'yes' and chat OOCly with them to figure out where to go for the scene.  (There's nothing wrong with paging other people too - just don't be too discouraged if they're busy doing other things.)

Also, sometimes people wanting roleplay (RP) will hang out in the IC area of the game, hoping someone comes along.  You can see this using the '+where' command.  Even though they're IC, it's usually considered good manners to page first and ask if they mind you joining in.  

Once you're together in the same MUSH room, one person will usually start the scene with a **scene set**.  For example:

> Morning business is approaching its conclusion.  Those holding business accounts have come in with books and figures for the ledgers kept in the bank, deposits and withdrawals made. Everything mostly in order, Spencer is at the manager's desk, organizing all the chaos that grew from that in preparations for the afternoon book work and getting it all orderly once more. He is standing and walking around the desk as he organizes and complies the papers as appropriate.

This scene set, from Spencer's player, is great because it establishes the time of day, the place, what's going on, and where Spencer is at in the room.

MUSHes are written in third-person, present tense.   (For example:  "Morning business is approaching the end..." and "Spencer is at the desk...")  The goal of a MUSH is to read like a short story or novel.  In fact, players often save a transcript of what they see on screen, called a **log**, and post it on the game's website so that others can stay informed of what's going on in the game, and enjoy their fellow players' creativity.  

When you write your character's actions, it's called a **pose**.  There are several commands to help you pose.  Poses are only seen by the people in your immediate vicinity.

      "Hello.   -->   Faraday says, "Hello."
      :waves hello.  -->  Faraday waves hello.
      ;'s dog barks.  -->  Faraday's dog barks.
      @emit The dog wags its tail at Faraday.  -->  The dog wags its tail at Faraday.

You could pose entirely using the emit command, but the other variants are shortcuts.  

Posing happens in a round-robin fashion, with each person taking their turn.  It requires a fine balance between writing a meaningful, interesting pose without taking forever to do it.  Here is a slightly longer example of a roleplay scene, from [http://sweetwatercrossingmush.wikidot.com/log:cooper-s-murder Sweetwater Crossing MUSH]:

>  It's the end of another day at the office, the 'office' being the Sheriff's Office in the northern end of town. Mitchell steps out and onto the dirt road, glancing up and down the street. No trouble here, or at least no trouble so far. So he steps off to the south, apparently heading for the Boarding House that he calls home.
> 
> 
> It's a bit of a journey, from the smithy north of the town center, to the places more traveled by the folk, better born and baser bred. And so…the horse, making its way down along the northern road, pausing only at the tie-up close to the general store. Dark of skin, but in the way of the First Nations, the woman who slides down from the white and black dappled stallion seems somewhere in between. Dressed in her work clothes, complete with farrier's apron, hair tightly braided, seems more concerned with the horse than with the people sending decidedly unfriendly looks in her direction.
> 
> 
> Charlie is on the porch of the brothel, shoulder leaning against one of the posts and arms crossed over his chest as he surveys the street traffic at the end of the day. He's got a friendly sort of expression on his face, not quite a smile but certainly not frown. He tips his hat with a finger as folks pass by, offering, an "Evening, Marshal," when the young man comes into view. He doesn't follow up, though, immediately taken by the appearance of the unusual woman. There's nothing disapproving in his glance - quite the opposite - and should she look in his direction, she'll receive the customary nod of hello.
> 
> 
> Down the street come a pair of horses, barreling in at a fast clip. The rear horse is carrying double, the main rider holding on tightly to another fellow slumped over the neck of the horse. The lead rider spots Mitchell and pulls up the reins. "Marshal!" he calls urgently. "John Cooper's been shot!" Sure enough, as the second horse gets closer it becomes clear that the slumped fellow is none other than the owner of Cooper Ranch.

Side note:  Posing using the simple 'say' variant is considered kind of lazy.  Fiction is about more than just what you say.  Describing body language, tone of voice, and what's going on around you is equally important to give your roleplay depth.


# Getting Around

In a tabletop RPG, players move from one place to another just by saying so.  The players say, "We take the shuttle to Tatooine" and the Gamemaster describes what they see.  In improv acting, the actors are all on the stage together and use scenery, props or their imagination.  

MUSHes need a little more structure.  There could be dozens or even hundreds of players online at the same time, and there isn't a Gamemaster sitting around just waiting to describe things.  The games handle location by dividing the game world into a series of **rooms**, linked by **exits**.

Despite the name, a "room" does not necessarily reflect a single room in a building, though that is the most common application.  A single MUSH room can represent anything from a star system to a closet.  The room description will tell you how big of an area is represented.

Many commands (notably poses) show their output only to people in a single room.  This allows different people to be playing different things at the same time.  One caveat:  Just because you can see something going on in your room doesn't necessarily mean your //character// can see it.  If the room represents an entire saloon, a character sitting at the bar wouldn't be able to hear a quiet conversation at a private table.  Players in a large room will make it clear exactly where in that room they are.

Here is an example of what you see when you're in a room on a MUSH:

    +==~~~~~====~~~~====~~~~====~~~~=====~~~~=====~~~~====~~~~====~~~~====~~~~~==+
     Town - Center                                                    (B4) 
     Sun Mar 17, 1868 (03/17/13)                                Cool and flurrying.
     ------------------------------------------------------------------------------
     The town proper is spread out along the plains south of the river, sod 
    and lumber buildings lining either side of a dirt street. It is fortunate 
    that rainstorms are infrequent, because even the plank sidewalks in 
    front of some buildings do little to combat the muck when it rains. 
    A crossing street heads south to more buildings.
     ------------------------------------------------------------------------------
     Contents:     
        Faraday - A coder wearing a black baseball cap.
     
     Exits:       [BAR] Barber                     [BRO] Broken Spoke Saloon        
                  [HOT] Hotel                      [RAM] RA Mercantile              
                  [WYA] Wyatt Stables             
     
                  [N]   Prairie                    [S]   Town - South               
                  [E]   Town - Northeast           [W]   Town - Crossing            
    +==~~~~~====~~~~====~~~~====~~~~=====~~~~=====~~~~====~~~~====~~~~====~~~~~==+

The exact format of the room information will vary MUSH to MUSH, but the general content is pretty standard:

* Room Name ("Welcome Room") tells you where you are.
* Description ("The town proper is....") describes what you see.  In OOC areas like the welcome room, this contains info for you, the player.  In IC areas, it tells you what your character sees.
* Contents ("Faraday") tells you who or what else is in the room with you. To get a closer look, type 'look <name>'.
* The Exits list ("[BAR] Barber") tells you where you can go from here and what you type to get there.  In this case, typing 'BAR' (standard shorthand for 'out') will take you to the Barber's shop.
* On some games, the room may also tell you the IC date, weather, and other special information.

You can see that the center of town is a crossroads with exits going all sorts of places.  Most games will have a map, either on the web page or via a 'map' command, to help you find your way around.

# Storytelling

Everything we've talked about so far has addressed //how// to play, but there's still an even bigger question:  //What// do you play?

A lot of MUSHing is purely social in nature - "slice of life" roleplay.  Bars, restaurants, gyms and nightclubs are popular roleplay locations, just as they are popular hangouts in real life.  Even on a war-centric MUSH, people will roleplay digging foxholes, planning missions, fixing damaged fighter jets, or just hanging out in the mess hall. A fair bit of roleplay surrounds personal relationships as well - friendships and romances.

Social scenes are the glue of a game, essential to building relationships.  Without those relationships, even exciting events can fall flat because you're just throwing a bunch of strangers at each other.  

But eventually, //something// needs to happen or people get bored.  Such exciting events are called **Tinyplots** (TPs or plots for short).  A plot could be as simple as a barfight or as complicated as people trying to expose a government conspiracy.  

Plots involve some degree of OOC communication and coordination.  You don't need to (and probably shouldn't) script out every little detail, but it often helps things go more smoothly if at least some of the people involved have *some* idea what the goals of the plot are.

# The Man/Woman Behind the Curtain

The game administrators (also called **Staff/Wizards/Admin**) are the people who run the game.  They can be considered a cross between a movie director (bringing the vision to the game and coordinating things behind the scenes), movie producer (footing the server costs and making sure things run smoothly), and tabletop gamemaster (running plots and adventures for the players so they don't just sit around drinking at the IC pub all day).  

Like Ben Affleck, MU admins can direct and also play on their own games.  This sometimes does present a conflict of interests, so choosing a game with trustworthy staff is important for your own peace of mind.

You can usually see a list of game admins using the '+staff' command.  Admin characters usually have OOC names to set them apart from regular characters.

# Miss Manners

Like any subculture, MUSHing has its own set of unwritten rules. There is no universal code of conduct for MUSHes, but here are a few common rules:

* Ask before joining a scene in progress.
* If someone asks to join a scene, try to find a way to work them in if you can.
* If you really want a private scene, use a private room.
* Avoid 'lurking' to watch a scene that you are not a part of unless you know the people pretty well.
* If you are speeding through a room with other players, a simple OOC "Just passing through!" is polite.
* Ask before posing logs containing sensitive/private IC information.