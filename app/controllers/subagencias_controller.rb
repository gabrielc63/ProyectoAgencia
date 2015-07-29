class SubagenciasController < ApplicationController
  before_action :signed_in_agencia
  before_action :set_subagencia, only: [:show, :edit, :update, :destroy]

  def index
    @subagencias = current_agencia.subagencias
  end

  # def listado
  #   @subagencias = current_agencia.subagencias
  # end

  def new
    @subagencia = current_agencia.subagencias.build
  end

  def create
    @subagencia = current_agencia.subagencias.build(subagencia_params)
    if @subagencia.save
      flash[:success] = 'Agregada Subagencia'
      redirect_to home_url
    else
      render 'new'
    end
  end

  def show
    @impreso = @subagencia.impresos.build
  end

  def edit
  end

  def update
    if @subagencia.update(subagencia_params)
        redirect_to @subagencia, notice: 'La subagencia fue actualizada'
    else
      render 'edit'
    end
  end

  private

    def set_subagencia
      @subagencia = Subagencia.find(params[:id])
    end

    def subagencia_params
      params.require(:subagencia).permit(:titular, :numero_subagencia, :email,
                                  :telefono, :domicilio)
    end
end
