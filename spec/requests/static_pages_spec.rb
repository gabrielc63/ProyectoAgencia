require 'rails_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Proyecto Agencia') }
    it { should have_title('') }
    it { should_not have_title('| Home') }

  end
end
