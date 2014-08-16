---
layout: page
title: Templates
subtitle: 
group: tutorials
---
{% include JB/setup %}

Many Ares plugins support **Templates**, which allow you to customize the appearance of the who list, character sheets, room descriptions and more.  

# Out of the Box Templates

Every plugin comes fully configured with a standard template out of the box.  If you like the who display or room descriptions or whatnot, you don't have to do anything!

# Simple Customizations

So the standard template isn't quite cutting it.  Maybe you're not using factions so you want to remove the 'faction' field from the who list and replace it with 'position' instead.   Or maybe you're on a military game and want to add 'rank' to the character description template.  These sorts of simple customizations are easy to do, but first we need to understand a little bit about how the templates work.

Templates are plain text files that mingle text and special tags, similar to the way HTML works.  The tags are used to display data fields.  Field tags look like this: **<%= fieldname %>**.  Templates can also contain [formatting codes]({{site.siteroot}}tutorials/formatting.html), including ANSI color.

Let's take a simple example of the character description template, which controls what gets shown when you look at a character.  With the out-of-the-box template, a character description looks like this:

+==~~~~~====~~~~====~~~~====~~~~=====~~~~=====~~~~====~~~~====~~~~====~~~~~==+

<span style="color:green">Adama</span>

Full Name: Wiliam Adama

A grizzled old commander with a pock-marked face.

Played By: Edward J Olmos

+==~~~~~====~~~~====~~~~====~~~~=====~~~~=====~~~~====~~~~====~~~~====~~~~~==+

And here is the template that makes it work.

    <%= line %>
    %xg<%= name %>%xn
    
    Full Name: <%= fullname %>
    <%= description %>
    
    Played By: <%= actor %>
    <%= line %>


Let's take the template apart piece by piece.

* First is the **<%= line %>** tag - this is a special tag that displays a border line.  You can configure multiple lines and display them by name like <%= line 1 %>, <%= line A %>, etc.
* Next is the character's name using the **<%= name %>** tag.  This has ansi color codes around it to make it green.
* Then there's a blank line.  Whitespace matters in template files.
* Now we have the words "**Full Name:**" followed by the character's full name using the **<%= fullname %>** tag. 
* Lastly there is the description, played by and a closing border line.

How do you know what fields are available?  Every plugin has a list, described in the plugin documentation. If the plugin offers a rank field and you want to add it to the character description template?  Just chuck it in there where you want it to appear - perhaps after full name:

    Full Name: <%= fullname %>         Rank: <%= rank %>

or maybe you want it on two lines:

    Full Name: <%= fullname %>
    Rank: <%= rank %>

or maybe you want to make it more of a unified display with no explanatory tags:

    <%= rank %> <%= fullname %>

Just by editing the text, you can change the template.

> A note about translations:  AresMUSH is designed to support multiple languages.  In the  templates you'll mostly see special translation field names rather than raw text.  For instance:  <%= t('profile.fullname_title') %> instead of "Full Name:".  You don't need to worry about this when doing your own customizations unless you plan to share them with others.

# Advanced Customization

If you want to go above and beyond simple customizations using the available fields, the template system lets you do so, but it's going to require a little bit of code.

Ares templates actually use a standard Ruby template system called [Erubis](http://www.kuwata-lab.com/erubis/users-guide.html), which is used in Ruby on Rails web programming.   In a nutshell, what you're doing is embedding Ruby code alongside the text.  For those familiar with PHP, it's a basically the same as embedding PHP code snippets inside your HTML.

You can make the embedded code as fancy as you want, but it's usually best to keep it simple and put the majority of the logic in the **Template Helper Objects**.  Each plugin provides one or more of these helpers, whose purpose is to wrap up the data fields in methods so you can access them easily from your template.

For example, the who list plugin provides the **WhoTemplate** object for the basic who data.  One of the things in there is a list of **WhoClientTemplate** objects, one for each connected player (aka client).  These two helper objects provide all the data to your who list template.  When you say <%= online_total %> in the template, what you're really doing is accessing the "online_total" method of the WhoTemplate object:

    def online_total
       t('who.players_online', :count => @clients.count)    
       # Note: t() is the translate function to support international games
       # In English, this would show up like "Online: 5"
    end

If you want to make a new field available in your template, just add a method to the data helper object. 

You can also embed raw Ruby code directly in the template using the same **<%= code %>** syntax.  For example:

    <%= Time.now %>   

And there's another kind of tag used when you want to execute some control code, like an 'if' check or a loop.  This uses a slightly different syntax: **<% code %>**.   The following example loops through each client and displays their name.  Notice there's no equals sign on the loop part, though there is on the name field.

    <% clients.each do |c| -%> 
     <%= c.name %>
    <% end %>

# Template Helpers

A number of standard functions are available to help you in either your templates or your template helper objects.

**Alignment functions** - These let you control the width of text.  If the text is too long, it’ll be trimmed, and if it’s too short, it will be padded with the specified character up to the desired width.  It is safe to call these with nil strings, unlike the built-in Ruby string methods.

    left(string, width, padding char - defaults to space)
    right(string, width, padding char - defaults to space)
    center(string, width, padding char - defaults to space)

**One Line Block** - Sometimes you'll have a template that wants to show a lot of stuff on one line.  Since whitespace matters in templates, this could lead to some pretty jumbled text.  That's where the one_line helper comes in.  Just slap it around some code, and it will strip off linebreaks for all the text in-between.  This lets you put the fields on separate lines in the //template//, but still have them show up all on one line when it's displayed.

    <% one_line do %>
    <%= field1 %>
    <%= field2 %>
    etc.
    <% end %>

**Trim Mode** - Another trick for controlling whitespace is the trim mode.  By putting a "-" in front of the end of a field tag, you can tell the template engine to NOT put a linebreak after that field.  This only works if the field tag is at the end of a line.   It is useful to note that you don't need to do this for control tags (<% %>); they never have linebreaks after them anyway.
 
    <% clients.each do |c| %> 
    <%= field1 -%>
    <%= field2 -%>
    <% end %>
