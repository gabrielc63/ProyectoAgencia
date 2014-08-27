require 'rails_helper'

RSpec.describe JuegoImpreso, :type => :model do

  let(:sub_agencia) { FactoryGirl.create(:sub_agencia) }
  before { @juego_impreso = sub_agencia.juegos_impreso.build(fecha: Date.today,
                           quiniela: 10000, quini_ex: 5000, loteria_online: 3000,
                           otros_juegos: 7000, otros_gastos: 333, premios: 12000.55
                            ) }

  subject { @juego_impreso }

  it { should respond_to(:fecha) }
  it { should respond_to(:quiniela) }
  it { should respond_to(:quini_ex) }
  it { should respond_to(:loteria_online) }
  it { should respond_to(:otros_juegos) }
  it { should respond_to(:otros_gastos) }
  it { should respond_to(:premios) }
  it { should respond_to(:sub_agencia) }
  its(:sub_agencia) { should eq sub_agencia}

  it { should be_valid }

  describe "when fecha is not present" do
    before { @juego_impreso.fecha = " " }
    it { should_not be_valid }
  end

  describe "when quiniela is not present" do
    before { @juego_impreso.quiniela = " " }
    it { should_not be_valid }
  end

  describe "when quini express is not present" do
    before { @juego_impreso.quini_ex = " " }
    it { should_not be_valid }
  end

  describe "when loteria online is not present" do
    before { @juego_impreso.loteria_online = " " }
    it { should_not be_valid }
  end

  describe "when otros gastos is not present" do
    before { @sub_agencia.otros_gastos = " " }
    it { should_not be_valid }
  end

  describe "when otros juegos is not present" do
    before { @sub_agencia.otros_juegos = " " }
    it { should_not be_valid }
  end

  describe "when premios is not present" do
    before { @sub_agencia.premios = " " }
    it { should_not be_valid }
  end
end
