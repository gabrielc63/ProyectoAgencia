class AgenciasController < ApplicationController
  def new
    @agencia = Agencia.new
  end
end
