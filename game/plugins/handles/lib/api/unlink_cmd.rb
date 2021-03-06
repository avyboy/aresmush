module AresMUSH
  module Handles
    class ApiUnlinkCmdArgs
      attr_accessor :handle_name, :char_id
      
      def initialize(handle_name, char_id)
        self.handle_name = handle_name
        self.char_id = char_id
      end
      
      def to_s
        "#{handle_name}||#{char_id}"
      end
      
      def validate
        return t('api.invalid_handle') if !Handles.handle_name_valid?(self.handle_name)
        return t('api.invalid_char_id') if self.char_id.blank?
        return nil
      end
     
      def self.create_from(command_args)
        handle_name, char_id = command_args.split("||")
        ApiUnlinkCmdArgs.new(handle_name, char_id)
      end
    end
  end
end