require 'rails_helper'

RSpec.describe Subagencia, :type => :model do

  let(:agencia) { FactoryGirl.create(:agencia) }
  before do
    @sub_agencia = agencia.subagencias.build(titular: "Javier Pastore", numero_subagencia: "45", email: "javier@gmail", domicilio: "Espania 679", telefono: "345533")
  end

  subject { @sub_agencia }

  it { should respond_to(:titular) }
  it { should respond_to(:numero_subagencia) }
  it { should respond_to(:email) }
  it { should respond_to(:domicilio) }
  it { should respond_to(:telefono) }
  it { should respond_to(:agencia) }
  its(:agencia) { should eq agencia}

  it { should be_valid }

  describe "when titular is not present" do
    before { @sub_agencia.titular = " " }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @sub_agencia.email = " " }
    it { should_not be_valid }
  end

  describe "when numero subagencia is not present" do
    before { @sub_agencia.numero_subagencia = " " }
    it { should_not be_valid }
  end

  describe "when domicilio is not present" do
    before { @sub_agencia.domicilio = " " }
    it { should_not be_valid }
  end

  describe "when telefono is not present" do
    before { @sub_agencia.telefono = " " }
    it { should_not be_valid }
  end

end
