require "rails_helper"

RSpec.describe ImpresosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/impresos").to route_to("impresos#index")
    end

    it "routes to #new" do
      expect(:get => "/impresos/new").to route_to("impresos#new")
    end

    it "routes to #show" do
      expect(:get => "/impresos/1").to route_to("impresos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/impresos/1/edit").to route_to("impresos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/impresos").to route_to("impresos#create")
    end

    it "routes to #update" do
      expect(:put => "/impresos/1").to route_to("impresos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/impresos/1").to route_to("impresos#destroy", :id => "1")
    end

  end
end
