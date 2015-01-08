---
layout: page
title: Basic Templates
subtitle: 
group: tutorials
---
{% include JB/setup %}

Many Ares plugins support **Templates**, which allow you to customize the appearance of the who list, character sheets, room and character descriptions and more.  

# Out of the Box Templates

Every plugin comes fully configured with a standard template out of the box.  If you like the who display or room descriptions or whatnot, you don't have to do anything!

# Template Files

Template files are kept in text files within each plugin's **templates** directory. For example:

    game/plugins/who/templates/who.erb  (template for the who list)
    game/plugins/who/templates/where.erb  (template for the where list)

You change the template just by editing these files.

> Don't forget to reload the configuration using 'load &lt;plugin name&gt;' on the game after changing a template.

# How Templates Work

Templates are plain text files that mingle text and special tags, similar to the way HTML works.  The tags are used to display data fields.  Field tags look like this: 

    <%= fieldname %>

Templates can also contain [formatting codes]({{site.siteroot}}tutorials/formatting.html), including ANSI color.

Let's take a simple example of the character description template, which controls what gets shown when you look at a character.  With the out-of-the-box template, a character description looks like this:

+==~~~~~====~~~~====~~~~====~~~~=====~~~~=====~~~~====~~~~====~~~~====~~~~~==+<br/>
<span style="color:green">Adama</span><br/><br/>
Full Name: Wiliam Adama<br/>
A grizzled old commander with a pock-marked face.<br/><br/>
Played By: Edward J Olmos<br/>
+==~~~~~====~~~~====~~~~====~~~~=====~~~~=====~~~~====~~~~====~~~~====~~~~~==+

And here is the template that makes it work.

    <%= line %>
    %xg<%= name %>%xn
    
    Full Name: <%= fullname %>
    <%= description %>
    
    Played By: <%= actor %>
    <%= line %>


Let's take the template apart piece by piece.

* First is the **<%= line %>** tag - this is a special tag that displays a border line. 
* Next is the character's name using the **<%= name %>** tag.  This has ansi color codes around it to make it green.
* Then there's a blank line.  Whitespace matters in template files.
* Now we have the words "**Full Name:**" followed by the character's full name using the **<%= fullname %>** tag. 
* Lastly there is the description, played by and a closing border line.

> A note about translations:  AresMUSH is designed to support multiple languages.  In the  real templates you might see something like <%= t('profile.fullname\_title') %> or <%= fullname_title %>  instead of the raw text "Full Name:".  If you're tweaking things, just use raw text unless you're worried about [international audiences]({{site.siteroot}}tutorials/localization.html).

# Editing the Template

You can move around the text and tags to your heart's content, adjusting things like color, order of appearance, line placement, etc.   For example, maybe you want to add extra line tags to bracket the description:

    Full Name: <%= fullname %>
    <%= line 2 %>
    <%= description %>    
    <%= line 2 %>

Or maybe you like it better if it says "Actor:" instead of "Played By:": 

    Actor: <%= actor %>

## Removing Things

Removing things is easy too.  Don't want the actor field displayed?  Just axe it.

## Adding Things

Many templates have extra tags that don't appear in the out-of-the-box template, which you can add if you like.  How do you know what tags are available?  Every template has a list, found in the [plugin documentation]({{site.siteroot}}rdoc/).  

For example, looking at the character description template (AresMUSH::Describe::CharacterTemplate) we can see the tags used above - name, description, actor - but also some other ones, like rank.

Let's say you're on a military game and you want to add rank to the description template.  Just chuck it in there where you want it to appear - perhaps after full name:

    Full Name: <%= fullname %>         Rank: <%= rank %>

or maybe you want it on two lines:

    Full Name: <%= fullname %>
    Rank: <%= rank %>

If the tag you're looking for doesn't already exist, you can create it - but you'll have to dive into the code to do so.  Check out the [advanced templates tutorial]({{site.siteroot}}tutorials/coding/templates-advanced) for details.

## Adjusting Formatting

Sometimes the formatting appears in the template itself (like the %xg tag for green in the description example above), but often it's handled in the code. If something isn't being spaced or formatted the way you want it, check out the [advanced templates tutorial]({{site.siteroot}}tutorials/coding/templates-advanced).  

> Generally we recommend keeping formatting details in the code rather than the template files because they get too messy to read otherwise.

# Tips and Tricks

## Looping Tags

Many templates contain lists, such as the list of players in the Who template.  To display each item in the list requires a special loop tag using the word 'each'.  Here's how it looks:

    <% clients.each do |c| -%> 
      <%= char_name(c) %-> 
      etc.
    <% end %>

The stuff in-between the "each" line and the "end" line is done once for each item in the list.

## Avoiding Extra Lines

You might be wondering why the character fields in the 'looping tags' example above get shown all on one line when they're on multiple lines in the template.  Whitespace matters, right?

Ares templates offer a sneaky trick:  If you use a "-" in front of the end "&gt;" then it *doesn't* put a linebreak after.

This version would show status and name on separate lines:

      <%= char_status(c) %> 
      <%= char_name(c) %> 
      
This version shows status and name on one line:

      <%= char_status(c) %-> 
      <%= char_name(c) %-> 

You can also use the special "one\_line" tag.  Anything between "one\_line" and "end" will all get displayed on the same line.  For example:

    <% one_line do %>
    %xr<%= online_total %>%xn 
    %xg<%= ic_total %>%xn 
    %xb<%= online_record %>%xn
    <% end %>


# Even More Templates

For even fancier things you can do with templates, check out the  [advanced templates tutorial]({{site.siteroot}}tutorials/coding/templates-advanced).