class JuegosImpresoController < ApplicationController
  def index
  end

  def new
    @subagencia = Subagencia.find(params[:subagencia_id])
    @juego_impreso = @subagencia.juegos_impreso.build
  end

  def create
  end

  def show
  end
end
