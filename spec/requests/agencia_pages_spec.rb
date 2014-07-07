require 'rails_helper'

describe "Paginas de Agencia" do

  subject { page }

  describe "pagina registro" do
    before { visit registro_path }

    it { should have_content('Registrarse') }
    it { should have_title('Registro') }
  end

  describe "registro" do
    before { visit registro_path }

    let(:submit) { "Crear mi cuenta" }

    describe "con informacion invalida" do
      it "no deberia crear una agencia" do
        expect { click_button submit }.not_to change(Agencia, :count)
      end

      describe "despues de enviar" do
        before { click_button submit }

        it { should have_title('Registrarse') }
        it { should have_content('error') }
      end

    end

    describe "con informacion valida" do
      before do
        fill_in "Numero agencia",  with: "22"
        fill_in "Titular",         with: "Juan Perez"
        fill_in "Domicilio",       with: "Brazil 722"
        fill_in "Telefono",        with: "456589"
        fill_in "Localidad",       with: "Goya"
        fill_in "Email",           with: "juancho@gmail.com"
        fill_in "Password",        with: "123456"
        fill_in "Password Confirmation",    with: "123456"
      end

      it "deberia crear una agencia" do
        expect { click_button submit }.to change(Agencia, :count).by(1)
      end

      describe "despues de guardar la agencia" do
        before { click_button submit }
        let(:agencia) { Agencia.find_by(email: 'juancho@gmail.com') }

        it { should have_title(agencia.numero_agencia) }
        it { should have_link('Salir') }
        it { should have_selector('div.alert.alert-success', text: 'Bienvenido') }
      end
    end

  end

end
