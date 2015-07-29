class ImpresosController < ApplicationController
  before_action :set_impreso, only: [:show, :edit, :update, :destroy]

  # GET /impresos
  # GET /impresos.json
  def index
    @subagencia = Subagencia.find(params[:subagencia_id])
    @impresos = @subagencia.impresos.all
  end

  # GET /impresos/1
  # GET /impresos/1.json
  def show
  end

  # GET /impresos/new
  def new
    @subagencia = Subagencia.find(params[:subagencia_id])
    @impreso = @subagencia.impresos.build
  end

  # GET /impresos/1/edit
  def edit
  end

  # POST /impresos
  # POST /impresos.json
  def create
    @subagencia = Subagencia.find(params[:subagencia_id])
    @impreso = @subagencia.impresos.build(impreso_params)

    respond_to do |format|
      if @impreso.save
        format.html { redirect_to subagencia_impresos_url(@subagencia), notice: 'Juego impreso fue guardado.' }
        format.json { render :show, status: :created, location: @impreso }
      else
        format.html { render :new }
        format.json { render json: @impreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /impresos/1
  # PATCH/PUT /impresos/1.json
  def update
    respond_to do |format|
      if @impreso.update(impreso_params)
        format.html { redirect_to @impreso, notice: 'Juego impreso fue actualizado.' }
        format.json { render :show, status: :ok, location: @impreso }
      else
        format.html { render :edit }
        format.json { render json: @impreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /impresos/1
  # DELETE /impresos/1.json
  def destroy
    @impreso.destroy
    respond_to do |format|
      format.html { redirect_to subagencia_impresos_url(@impreso.subagencia), notice: 'Juego impreso fue eliminado' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_impreso
      @subagencia = Subagencia.find(params[:subagencia_id])
      @impreso = @subagencia.impresos.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def impreso_params
      params.require(:impreso).permit(:fecha, :quiniela, :quini_ex, :loteria_online, :otros_juegos, :otros_gastos, :premios)
    end
end
