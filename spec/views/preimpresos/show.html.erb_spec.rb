require 'rails_helper'

RSpec.describe "preimpresos/show", :type => :view do
  before(:each) do
    @preimpreso = assign(:preimpreso, Preimpreso.create!(
      :numero_sorteo => 1,
      :precio => 1.5,
      :cantidad => 2,
      :tipo => 3,
      :devolucion => 4,
      :agencia => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(//)
  end
end
