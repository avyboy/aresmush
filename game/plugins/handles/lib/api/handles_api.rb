module AresMUSH
  module Handles
    def self.get_link_code(client, char_id)
      if (Global.api_router.is_master?)
        random_key = Character.random_link_code
        client.char.temp_link_codes[char_id] = random_key
        client.char.save!
        client.emit_success t('handles.link_key_is', :key => random_key)
      else
        client.emit_failure t('api.use_command_on_central')
      end
    end
    
    def self.link_character(client, handle, link_code)
      if (Global.api_router.is_master?)
        client.emit_failure t('api.cant_link_on_master')
      else
        if (client.char.handle)
          client.emit_failure t('handles.character_already_linked')
          return
        end
        client.emit_success t('handles.sending_link_request')
        args = ApiLinkCmdArgs.new(handle, client.char.api_character_id, client.name, link_code)
        cmd = ApiCommand.new("link", args.to_s)
        Global.api_router.send_command(ServerInfo.arescentral_game_id, client, cmd)
      end
    end
    
    def self.unlink_character(client, char_id)
      if (Global.api_router.is_master?)
        linked_char = client.char.linked_characters[char_id]
        if (!linked_char)
          client.emit_failure t('api.character_not_linked')
          return
        end
                        
        args = ApiUnlinkCmdArgs.new("@#{client.name}", char_id)
        cmd = ApiCommand.new("unlink", args.to_s)
        Global.api_router.send_command(linked_char["game_id"].to_i, nil, cmd)

        client.char.linked_characters.delete char_id
        client.char.save
        client.emit_success t('handles.character_unlinked', :name => linked_char["name"])
      else
        client.emit_failure t('api.use_command_on_central')
        
      end
    end
    
    def self.list_characters(client)
      if (Global.api_router.is_master?)
        list = []
        list << t('handles.characters_title')
        list << "%l2"
        client.char.linked_characters.each do |k, v| 
          name = "#{v['name']}@#{ServerInfo.find_by_dest_id(v['game_id']).name}"
          list << "#{name.ljust(40)} #{k}"
        end
        client.emit BorderedDisplay.list list, t('handles.linked_characters')
      else
        client.emit_failure t('api.use_command_on_central')
      end
    end
  end
end