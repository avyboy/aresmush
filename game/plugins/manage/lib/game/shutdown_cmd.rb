module AresMUSH
  module Manage
    class ShutdownCmd
      include Plugin
      include PluginRequiresLogin
      include PluginWithoutArgs
      include PluginWithoutSwitches
      
      def want_command?(client, cmd)
        cmd.root_is?("shutdown")
      end
      
      def check_can_manage
        return t('dispatcher.not_allowed') if !Manage.can_manage_game?(client.char)
        return nil
      end

      def handle
        Global.client_monitor.clients.each do |c|
          c.emit_ooc t('manage.shutdown', :name => client.name)
          c.disconnect
        end
        
        # Don't use dispatcher here because we want a hard kill
        EM.add_timer(1) do
          EM.stop_event_loop
        end
      end
    end
  end
end
