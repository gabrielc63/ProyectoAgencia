class SubagenciasController < ApplicationController
  def index
    @subagencias = current_agencia.subagencias
  end

  def listado
    @subagencias = current_agencia.subagencias
  end

  def new
    @subagencia = current_agencia.subagencias.build
  end

  def create
    @subagencia = current_agencia.subagencias.build(subagencia_params)
    if @subagencia.save
      flash[:success] = 'Agregada Subagencia'
      redirect_to home_path
    else
      render 'new'
    end
  end

  def show
    @subagencia = Subagencia.find(params[:id])
    @juego_impreso = @subagencia.juegos_impreso.build
  end

  private

    def subagencia_params
      params.require(:subagencia).permit(:titular, :numero_subagencia, :email,
                                  :telefono, :domicilio)
    end
end
