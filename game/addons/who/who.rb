module AresMUSH
  module Who
    class Who
      include AresMUSH::Addon

      def after_initialize
        @client_monitor = container.client_monitor
      end

      def want_command?(cmd)
        cmd.root_is?("who")
      end
      
      def on_command(cmd)
        cmd.client.emit_ooc t('players_connected', :count => @client_monitor.clients.count)
      end
      
      def on_anon_command(cmd)
        cmd.client.emit_ooc t('players_connected', :count => @client_monitor.clients.count)
      end
    end
  end
end