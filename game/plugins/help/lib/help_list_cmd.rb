module AresMUSH
  module Help
    
    class HelpListCmd
      include Plugin
      include PluginWithoutSwitches

      attr_accessor :category_index, :page
      
      def want_command?(client, cmd)
        cmd.root.end_with?("help") && !cmd.args
      end

      def crack!
        self.category_index = Help.command_to_category_index(cmd.root)
        self.page = cmd.page.nil? ? 1 : cmd.page.to_i
      end
      
      def check_valid_category
        return t('help.unrecognized_help_library') if !self.category_index
        return nil
      end
        
      def check_can_view_help
        return nil if !self.category_index
        return t('dispatcher.not_allowed') if !Help.can_access_help?(client.char, self.category_index)
        return nil
      end
      
      def handle
        list = []
        
        topics_by_toc.sort.each do |name, subtopics|
          list << "%xg#{name}%xn"
          subtopics.each do |title, data|
            list << "%T%xh#{title.titleize}%xn - #{data["summary"]}"
          end
        end
        
        title = t('help.toc', :category => category_index["title"])
        
        client.emit BorderedDisplay.paged_list(list, self.page, 20, title, footer)
      end
      
      def topics_by_toc
        topics = self.category_index["topics"]
        topics_by_toc = {}
      
        topics.each do |k, v|
          toc = v["toc_topic"]
          next if !toc
          topics_by_toc[toc] = {} if !topics_by_toc[toc]
          topics_by_toc[toc][k] = v
        end
      
        topics_by_toc
      end
      
      def footer
        footer = "%l2%r"
        footer << "%xh#{t('help.other_help_libraries')}%xn"
        Help.categories.each do |c, v|
          footer << " \[#{v['command']}\] #{v['title']}"
        end
        footer
      end
    end
  end
end
