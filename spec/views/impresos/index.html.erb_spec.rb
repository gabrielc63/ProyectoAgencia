require 'rails_helper'

RSpec.describe "impresos/index", :type => :view do
  before(:each) do
    assign(:impresos, [
      Impreso.create!(
        :quiniela => 1,
        :quini_ex => 2,
        :loteria_online => 3,
        :otros_juegos => 4,
        :otros_gastos => 5,
        :premios => "9.99",
        :subagencia => nil
      ),
      Impreso.create!(
        :quiniela => 1,
        :quini_ex => 2,
        :loteria_online => 3,
        :otros_juegos => 4,
        :otros_gastos => 5,
        :premios => "9.99",
        :subagencia => nil
      )
    ])
  end

  it "renders a list of impresos" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
