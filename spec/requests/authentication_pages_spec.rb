require 'rails_helper'

RSpec.describe "AuthenticationPages", :type => :request do

    subject { page }

    describe "login page" do
      before {visit login_path}

      it { should have_content('Iniciar Sesion') }
      it { should have_title('Iniciar Sesion') }
    end

    describe "login" do

      before { visit login_path }

      describe "con informacion invalida" do
        before { click_button "Iniciar Sesion" }

        it { should have_title('Iniciar Sesion') }
        it { should have_selector('div.alert.alert-danger') }

        describe "despues de visitar otra pagina" do
          before { click_link "Inicio" }
          it { should_not have_selector('div.alert.alert-danger') }
        end
      end

      describe "con informacion valida" do
        let(:agencia) { FactoryGirl.create(:agencia) }
        before {sign_in agencia}

        it { should have_title(agencia.numero_agencia) }
        it { should have_link('Cuenta',          href: agencia_path(agencia)) }
        it { should have_link('Salir',           href: logout_path) }
        it { should have_link('Configuracion',   href: edit_agencia_path(agencia)) }
        it { should_not have_link('Registrarse', href: registro_path) }

        describe "despues al salir" do
          before { click_link "Salir" }
          it { should have_link('Iniciar Sesion') }
        end
      end

    end
end
