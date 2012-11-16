module AresMUSH
  module Login
    class Create
      include AresMUSH::Addon

      def want_command?(cmd)
        cmd.root_is?("create")
      end

      def on_command(cmd)
        cmd.client.emit_ooc t('create.already_logged_in')
      end
      
      def on_anon_command(cmd)
        args = cmd.crack_args(/(?<name>\S+) (?<password>\S+)/)
        
        name = args[:name]
        password = args[:password]

        # TODO: Find by alias too
        existing_player = Player.find_by_name(name)
        if (!existing_player.nil?)
          cmd.client.emit_failure(t('login.player_name_taken'))
          # TODO: This is just temp until the connect command is done
          cmd.client.player = existing_player[0]
          puts existing_player[0]
        else
          # TODO: Encrypt password
          # TODO: Specs
          player = Player.create(name, password)
          cmd.client.emit_success(t('login.player_created', :name => name))
          cmd.client.player = player
        end
      end
    end
  end
end