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

  factory :subagencia do
    titular "Javier Mascherano"
    numero_subagencia "14"
    email "javiermascherano@gmail.com"
    domicilio "Barcelona 2367"
    telefono "543312"
  end
end
