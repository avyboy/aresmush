module AresMUSH
  module Api
    describe SlaveRegisterResponseHandler do
      before do
        Global.api_router = ApiRouter.new(false)
        @client = double
        @game = double
        Game.stub(:master) { @game }
        SpecHelpers.stub_translate_for_testing
      end
      
      it "should fail if game id is invalid" do
        response = ApiResponse.new("register", ApiResponse.ok_status, "x||y")
        expect { Global.api_router.route_response(@client, response) }.to raise_error("api.invalid_game_id")
      end
      
      context "success" do
        
        before do
          @game.stub(:save)
          @game.stub(:api_game_id=)
          @central = double
          ServerInfo.stub(:find_by_dest_id).with(0) { @central }
          @central.stub(:save)
          @central.stub(:key=)
        end
        
        it "should update and save the game info" do
          response = ApiResponse.new("register", ApiResponse.ok_status, "2||x")
          @game.should_receive(:api_game_id=).with(2)
          @game.should_receive(:save)
          Global.api_router.route_response(@client, response)
        end
      
        it "should update and save the Ares Central key" do
          response = ApiResponse.new("register", ApiResponse.ok_status, "2||x")
          @central.should_receive(:key=).with("x")
          @central.should_receive(:save)
          Global.api_router.route_response(@client, response)
        end
      
        it "should fail if Ares Central not found" do
          response = ApiResponse.new("register", ApiResponse.ok_status, "2||x")
          ServerInfo.stub(:find_by_dest_id).with(0) { nil }
          expect { Global.api_router.route_response(@client, response) }.to raise_error("Can't find AresCentral server info.")
        end
      end
    end
  end
end