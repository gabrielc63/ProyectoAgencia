class AgenciasController < ApplicationController
  layout 'static_pages', only: [:new, :edit, :index]

  def home
    @agencia = current_agencia
  end

  def new
    @agencia = Agencia.new
  end

  def create
    @agencia = Agencia.new(agencia_params)
    if @agencia.save
      sign_in @agencia
      flash[:success] = "Bienvenido"
      redirect_to home_url
    else
      render 'new'
    end
  end

  def show
    # @agencia = Agencia.find(params[:id])
    @agencia = current_agencia
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
