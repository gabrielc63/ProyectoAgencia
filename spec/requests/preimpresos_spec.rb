require 'rails_helper'

RSpec.describe "Preimpresos", :type => :request do
  describe "GET /preimpresos" do
    it "works! (now write some real specs)" do
      get preimpresos_path
      expect(response.status).to be(200)
    end
  end
end
