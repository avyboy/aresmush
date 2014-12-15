---
layout: page
title: Upgrades
subtitle: 
group: tutorials
---
{% include JB/setup %}

With Fork:

    (one time only)
    git remote add upstream https://github.com/lynnfaraday/aresmush.git
    
    (every time you want to upgrade)
    git fetch upstream
    git merge upstream/master
    

Without Fork:

    git pull origin master

TODO TODO TODO

    lynn@vps-1162675-22349:~/aresmush$ git pull origin master
    
    game/plugins/api/lib/api_model.rb                  |    2 +-
    game/plugins/api/lib/args/register_cmd.rb          |    2 +-
    .../api/specs/handlers/register_cmd_specs.rb       |   10 +++++-----
    .../specs/handlers/register_update_cmd_specs.rb    |   12 ++++++------
    .../specs/handlers/sync_response_handler_specs.rb  |    3 +++
    
    
    CONFLICT (content): Merge conflict in game/config/server.yml
    
    
