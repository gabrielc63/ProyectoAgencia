module SessionsHelper
  def sign_in agencia
    remember_token = Agencia.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    agencia.update_attribute(:remember_token, Agencia.digest(remember_token))
    self.current_agencia = agencia
  end

  def current_agencia= agencia
    @current_agencia = agencia
  end

  def current_agencia
    remember_token = Agencia.digest(cookies[:remember_token])
    @current_agencia ||= Agencia.find_by(remember_token: remember_token)
  end

  def current_agencia? agencia
    agencia == current_agencia
  end

  def signed_in?
    !current_agencia.nil?
  end

  def sign_out
    current_agencia.update_attribute(:remember_token,
                                  Agencia.digest(Agencia.new_remember_token))
    cookies.delete(:remember_token)
  end

  def signed_in_agencia(new_return_point = request.url)
      # raise signed_in?.inspect
      unless signed_in?
        set_return_point(new_return_point)
        redirect_to login_path, notice: "Porfavor inicie sesion."
      end
  end
end
