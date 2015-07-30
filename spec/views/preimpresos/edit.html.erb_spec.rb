require 'rails_helper'

RSpec.describe "preimpresos/edit", :type => :view do
  before(:each) do
    @preimpreso = assign(:preimpreso, Preimpreso.create!(
      :numero_sorteo => 1,
      :precio => 1.5,
      :cantidad => 1,
      :tipo => 1,
      :devolucion => 1,
      :agencia => nil
    ))
  end

  it "renders the edit preimpreso form" do
    render

    assert_select "form[action=?][method=?]", preimpreso_path(@preimpreso), "post" do

      assert_select "input#preimpreso_numero_sorteo[name=?]", "preimpreso[numero_sorteo]"

      assert_select "input#preimpreso_precio[name=?]", "preimpreso[precio]"

      assert_select "input#preimpreso_cantidad[name=?]", "preimpreso[cantidad]"

      assert_select "input#preimpreso_tipo[name=?]", "preimpreso[tipo]"

      assert_select "input#preimpreso_devolucion[name=?]", "preimpreso[devolucion]"

      assert_select "input#preimpreso_agencia_id[name=?]", "preimpreso[agencia_id]"
    end
  end
end
