class SessionsController < ApplicationController
  def new
  end

  def create
    agencia = Agencia.find_by(email: params[:email].downcase)
    if agencia && agencia.authenticate(params[:password])
      sign_in agencia
      return_point(agencia)
    else
      flash.now[:error] = 'Invalida combinacion de email/password'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
