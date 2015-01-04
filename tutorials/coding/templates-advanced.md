---
layout: page
title: Advanced Templates
subtitle: 
group: tutorials
---
{% include JB/setup %}

The [basic templates tutorial]({{site.siteroot}}tutorials/templates.html) explained the template files - plain text files that define the desired format.  You can do a fair bit of customization just by changing those files, but some advanced customization will require diving into the code.

# Advanced Customization

Ares templates actually use a standard Ruby template system called [Erubis](http://www.kuwata-lab.com/erubis/users-guide.html), which is used in Ruby on Rails web programming.   In a nutshell, what you're doing is embedding Ruby code alongside the text.  For those familiar with PHP, it's a basically the same as embedding PHP code snippets inside your HTML.

Since ERB is embedded Ruby code, some knowledge of Ruby is necessary if you're going to be diving into advanced template customization.  Check out the [Coding for Ares]({{site.siteroot}}tutorials/coding/coding-for-ares.html) tutorial.

# Template Helpers

You can make the embedded code as fancy as you want, but it's usually best to keep it simple and put the majority of the logic in the **Template Helper Classes**.  Each plugin provides one or more of these helpers.

You can find the helper classes in the template_helpers directory under each plugin (for example:  /game/plugins/who/template_helpers/who_template.rb)

For example, the who list plugin provides the **WhoTemplate** helper.  When you use the <%= online_total %> field in the template, what you're really doing is accessing the "online_total" method of the WhoTemplate class:

    def online_total
       t('who.players_online', :count => @clients.count)    
    end

> Note: t() is the translate function to support multiple languages.  In English, this would show up like "Online: 5".  You can use raw text unless you're trying to cater to [international audiences]({{site.siteroot}}tutorials/localization.html).

By adding or changing these helper methods, you can tweak the display of the template.

# Sub-Templates

When a template shows a list of something, it uses a *different* template helper for each item in the list.  For example, the WhoTemplate helper class is for the who list as a whole, but the WhoClientTemplate helper class is for each character (aka client).

When the template is looping through the characters in the who list:

    <% clients.each do |c| -%> 
      <%= c.status %-> 
      <%= c.name %-> 
      etc.
    <% end %>

What it's actually doing is calling the 'status' and 'name' methods on the WhoClientTemplate helper class.

      def name
        left(@char.name, 22)
      end

# Adding Tags

Let's say you want to add a tag to the 'who' list to show each character's actor.  You would just add a new method to the template helper 

    def foo
       "FOO!"
    end  

Now you can use it in your template:

    <%= foo %>

# Looping Tags

Many templates have lists of items.  To display each item in the list requires a special loop tag using the word 'each'.  Here's how it looks:

    <% clients.each do |c| -%> 
      <%= c.status %-> 
      <%= c.name %-> 
      etc.
    <% end %>

The stuff in-between the "each" line and the "end" line is done once for each item in the list.

# Conditional Tags

Generally it's best to leave if/else type conditional logic in the template helper classes, but sometimes putting it into the template is unavoidable.   Let's take two examples.

## Day/Night Descriptions

Let's say you've written some custom plugin code that lets you save a different description for daytime and nighttime, available on your room model as day\_desc and night\_desc. The best way to do this would be in code:

      # In the RoomTemplate helper class:
      def day_night_desc
        if (is_it_daytime)
           @model.day_desc
        else
          @model.night_desc
        end
      end

Then you can simply use that in place of the normal 'description' tag:

    <%= day_night_desc %>

## Switching Templates

Now let's say you want to use a completely different room template for the OOC zone versus the IC zone (for some reason).  The code only supports one template for all rooms, but you can use some conditional tags inside of the template itself to perform some switcharoo magic. 

    # In the room template:
    <%= line %>
    <% if is_ooc_room? %>
       ooc room template stuff goes here
    <% else %>
       ic room template stuff goes here
    <% end %>

Note that this requires a method in your template helper class named "is\_ooc\_room" to tell you whether the room is IC or OOC.   You could do something similar for RP Rooms or Apartments if you wanted to display sub-rooms differently.

# Formatting Tips and Tricks

A number of standard methods are available to help you in either your templates or your template helper objects.

## Alignment Functions

These let you control the width of text.  If the text is too long, it’ll be trimmed, and if it’s too short, it will be padded with the specified character up to the desired width.  It is safe to call these with nil strings, unlike the built-in Ruby string methods.

    left(string, width, padding char - defaults to space)
    right(string, width, padding char - defaults to space)
    center(string, width, padding char - defaults to space)

## Avoiding Extra Lines

Sometimes you'll have a template that wants to show a lot of stuff on one line.  By putting a "-" in front of the end of a field tag, you can tell the template engine to NOT put a linebreak after that field.
 
    <% clients.each do |c| %> 
    <%= field1 -%>
    <%= field2 -%>
    <% end %>

You can also use the special "one\_line" tag.  Anything between "one\_line" and "end" will all get displayed on the same line.  For example:

    <% one_line do %>
    %xr<%= online_total %>%xn 
    %xg<%= ic_total %>%xn 
    %xb<%= online_record %>%xn
    <% end %>
