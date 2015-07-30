require 'rails_helper'

RSpec.describe "preimpresos/index", :type => :view do
  before(:each) do
    assign(:preimpresos, [
      Preimpreso.create!(
        :numero_sorteo => 1,
        :precio => 1.5,
        :cantidad => 2,
        :tipo => 3,
        :devolucion => 4,
        :agencia => nil
      ),
      Preimpreso.create!(
        :numero_sorteo => 1,
        :precio => 1.5,
        :cantidad => 2,
        :tipo => 3,
        :devolucion => 4,
        :agencia => nil
      )
    ])
  end

  it "renders a list of preimpresos" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
