require 'rails_helper'

RSpec.describe "impresos/new", :type => :view do
  before(:each) do
    assign(:impreso, Impreso.new(
      :quiniela => 1,
      :quini_ex => 1,
      :loteria_online => 1,
      :otros_juegos => 1,
      :otros_gastos => 1,
      :premios => "9.99",
      :subagencia => nil
    ))
  end

  it "renders new impreso form" do
    render

    assert_select "form[action=?][method=?]", impresos_path, "post" do

      assert_select "input#impreso_quiniela[name=?]", "impreso[quiniela]"

      assert_select "input#impreso_quini_ex[name=?]", "impreso[quini_ex]"

      assert_select "input#impreso_loteria_online[name=?]", "impreso[loteria_online]"

      assert_select "input#impreso_otros_juegos[name=?]", "impreso[otros_juegos]"

      assert_select "input#impreso_otros_gastos[name=?]", "impreso[otros_gastos]"

      assert_select "input#impreso_premios[name=?]", "impreso[premios]"

      assert_select "input#impreso_subagencia_id[name=?]", "impreso[subagencia_id]"
    end
  end
end
