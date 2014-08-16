---
layout: page
title: Formatting Codes
subtitle: 
group: tutorials
---
{% include JB/setup %}

Ares provides a number of formatting codes, which can be used pretty much anywhere: [templates]({{site.siteroot}}tutorials/templates.html), poses, descriptions, and more.

    %r - A linebreak
    %x or %c - Ansi color, see below.
    %b - A single blank space
    %t - Five blank spaces (like a tab)
    %l1, %l2, %l3, %l4 - Shows one of the border lines.

# Ansi Color

Ares uses %x and/or %c codes for color.  For example:  

    %xbBlue text%xn.

Ansi codes can be nested within each other.  

    %xrRed on black%xBRed on Blue%xnBack to normal

Available foreground colors are:  r (red), g (green), y (yellow), b (blue), m (magenta), c (cyan) and w (white).   Use the capital version of the letters to control the background color.

Additional ansi codes include:

    %x! - A random color
    %xu - Start underline
    %xU - End underline (but doesn't end any colors)
    %xi - Inverse colors
    %xI - End inverse
    %xh - Highlight color (bold)
    %xH - End bold (but doesn't end any colors)
