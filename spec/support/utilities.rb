def sign_in agencia, options={}
  if options[:no_capybara]
    # Sign in when not using Capybara.
    remember_token = Agencia.new_remember_token
    cookies[:remember_token] = remember_token
    agencia.update_attribute(:remember_token, Agencia.digest(remember_token))
  else
    visit login_path
    fill_in "email",    with: agencia.email
    fill_in "Password", with: agencia.password
    click_button "Iniciar Sesion"
  end
end
