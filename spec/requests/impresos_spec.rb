require 'rails_helper'

RSpec.describe "Impresos", :type => :request do
  describe "GET /impresos" do
    it "works! (now write some real specs)" do
      get impresos_path
      expect(response.status).to be(200)
    end
  end
end
