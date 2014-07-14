class SubagenciasController < ApplicationController
  def new
    @subagencia = Subagencia.new
  end

  def create
    @subagencia = Subagencia.new(subagencia_params)
    if @subagencia.save
      flash[:success] = 'Agregada Subagencia'
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

    def subagencia_params
      params.require(:subagencia).permit(:titular, :numero_subagencia, :email,
                                  :telefono, :domicilio)
    end
end
