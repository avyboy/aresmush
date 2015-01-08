---
layout: page
title: Formatting Codes
subtitle: 
group: tutorials
---
{% include JB/setup %}

Ares provides a number of formatting codes, which can be used pretty much anywhere: [templates]({{site.siteroot}}tutorials/templates.html), poses, descriptions, and more.

# Format Codes

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

# FANSI (even more colors!)

Ares also supports [FANSI](http://fansi.org/Index.aspx), an extended ANSI set with 256 colors.  Only certain clients support FANSI.  FANSI codes go from 1 to 256.

    %x1 to %x256 - FANSI color code to change foreground color.
    %X1 to %X256 - FANSI color code to change background color.
    
> See the **colors** command in-game to test whether FANSI codes work in your cilent, and to see what all the different number values look like.

# Functions

Ares in general doesn't support functions the way you're used to from MUSHCode.  But there is **limited** support for a few for backwards-compatibility. 

    [space(<number of spaces>)] - blank spaces
    [center(<text>,<length>,<optional padding string>)] - center text
    [left(<text>,<length>,<optional padding string>)] - left align text
    [right(<text>,<length>,<optional padding string>)] - right a lign text
    [ansi(<code>,<text>)] - ansify text
    
> The most important limitation is that you can't embed other codes or functions within functions.  [center(ABC,78)] will work.  [center(%BA%B,78)] will not change the %B's to spaces.
