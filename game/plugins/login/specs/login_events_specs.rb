require_relative "../../plugin_test_loader"

module AresMUSH
  module Login
    describe LoginEvents do
      include GlobalTestHelper
      
      before do
        AresMUSH::Locale.stub(:translate).with("login.announce_char_connected", { :name => "Bob" }) { "announce_char_connected" }
        AresMUSH::Locale.stub(:translate).with("login.announce_char_disconnected", { :name => "Bob" }) { "announce_char_disconnected" }
        AresMUSH::Locale.stub(:translate).with("login.announce_char_created", { :name => "Bob" }) { "announce_char_created" }
        stub_global_objects
        
        @client = double(Client)
        @client.stub(:name) { "Bob" }
        @login_events = LoginEvents.new
      end
      
      describe :on_char_connected_event do
        before do
          @char = double
          @client.stub(:char) { @char }
          @char.stub(:has_role?) { false }
          client_monitor.stub(:emit_all_ooc)
        end
        
        it "should announce the char" do
          client_monitor.should_receive(:emit_all_ooc).with("announce_char_connected")
          @login_events.on_char_connected_event CharConnectedEvent.new(@client)
        end
      end
      
      describe :on_char_created_event do
        it "should announce the char" do
          client_monitor.should_receive(:emit_all_ooc).with("announce_char_created")
          @login_events.on_char_created_event CharCreatedEvent.new(@client)
        end
      end
      
      describe :on_char_disconnected_event do
        it "should announce the char" do
          client_monitor.should_receive(:emit_all_ooc).with("announce_char_disconnected")
          @login_events.on_char_disconnected_event CharDisconnectedEvent.new(@client)
        end
      end
    end
  end
end