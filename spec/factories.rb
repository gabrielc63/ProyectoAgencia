FactoryGirl.define do
  factory :agencia do
    titular "Juan Perez"
    numero_agencia "64"
    email "juan@gmail.com"
    password "mentira"
    password_confirmation "mentira"
    domicilio "Espania 676"
    telefono "356677"
    localidad "Goya"
  end
end
