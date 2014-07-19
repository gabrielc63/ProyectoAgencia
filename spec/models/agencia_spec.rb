require 'rails_helper'

# RSpec.describe Agencia, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe Agencia do

  # let(:agencia) { FactoryGirl.create(:agencia) }
  before do
    @agencia = Agencia.new(password: "mentira", password_confirmation: "mentira", titular: "Juan perez",
                           numero_agencia: "65", email: "juan@gmail", domicilio: "Espania 676",
                           telefono: "345522", localidad: "Goya")
  end

  subject { @agencia }

  it { should respond_to(:titular) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:numero_agencia) }
  it { should respond_to(:email) }
  it { should respond_to(:domicilio) }
  it { should respond_to(:telefono) }
  it { should respond_to(:localidad) }
  it { should respond_to(:subagencias) }

  it { should be_valid }

  describe "when titular is not present" do
    before { @agencia.titular = " " }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @agencia.email = " " }
    it { should_not be_valid }
  end

end
