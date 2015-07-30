require "rails_helper"

RSpec.describe PreimpresosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/preimpresos").to route_to("preimpresos#index")
    end

    it "routes to #new" do
      expect(:get => "/preimpresos/new").to route_to("preimpresos#new")
    end

    it "routes to #show" do
      expect(:get => "/preimpresos/1").to route_to("preimpresos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/preimpresos/1/edit").to route_to("preimpresos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/preimpresos").to route_to("preimpresos#create")
    end

    it "routes to #update" do
      expect(:put => "/preimpresos/1").to route_to("preimpresos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/preimpresos/1").to route_to("preimpresos#destroy", :id => "1")
    end

  end
end
