class AgenciasController < ApplicationController
  def new
    @agencia = Agencia.new
  end

  def create
    @agencia = Agencia.new(agencia_params)
    if @agencia.save
      flash[:success] = "Bienvenido"
      redirect_to @agencia
    else
      render 'new'
    end
  end

  private

    def agencia_params
      params.require(:agencia).permit(:titular, :numero_agencia, :email, :telefono,
                                      :domicilio, :localidad, :password,
                                      :password_confirmation)
    end
end
