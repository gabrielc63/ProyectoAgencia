class AgenciasController < ApplicationController
  def home

  end

  def new
    @agencia = Agencia.new
  end

  def create
    @agencia = Agencia.new(agencia_params)
    if @agencia.save
      sign_in @agencia
      flash[:success] = "Bienvenido"
      redirect_to @agencia
    else
      render 'new'
    end
  end

  def show
    @agencia = Agencia.find(params[:id])
  end

  def edit
    @agencia = Agencia.find(params[:id])
  end

  private

  def agencia_params
    params.require(:agencia).permit(:titular, :numero_agencia, :email, :telefono,
                                    :domicilio, :localidad, :password,
                                    :password_confirmation)
  end
end
