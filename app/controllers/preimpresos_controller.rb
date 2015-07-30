class PreimpresosController < ApplicationController
  before_action :set_preimpreso, only: [:show, :edit, :update, :destroy]

  # GET /preimpresos
  # GET /preimpresos.json
  def index
    @preimpresos = Preimpreso.all
  end

  # GET /preimpresos/1
  # GET /preimpresos/1.json
  def show
  end

  # GET /preimpresos/new
  def new
    @preimpreso = current_agencia.preimpresos.build
  end

  # GET /preimpresos/1/edit
  def edit
  end

  # POST /preimpresos
  # POST /preimpresos.json
  def create
    @preimpreso = Preimpreso.new(preimpreso_params)

    respond_to do |format|
      if @preimpreso.save
        format.html { redirect_to @preimpreso, notice: 'Preimpreso was successfully created.' }
        format.json { render :show, status: :created, location: @preimpreso }
      else
        format.html { render :new }
        format.json { render json: @preimpreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /preimpresos/1
  # PATCH/PUT /preimpresos/1.json
  def update
    respond_to do |format|
      if @preimpreso.update(preimpreso_params)
        format.html { redirect_to @preimpreso, notice: 'Preimpreso was successfully updated.' }
        format.json { render :show, status: :ok, location: @preimpreso }
      else
        format.html { render :edit }
        format.json { render json: @preimpreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preimpresos/1
  # DELETE /preimpresos/1.json
  def destroy
    @preimpreso.destroy
    respond_to do |format|
      format.html { redirect_to preimpresos_url, notice: 'Preimpreso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_preimpreso
      @preimpreso = Preimpreso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def preimpreso_params
      params.require(:preimpreso).permit(:fecha_sorteo, :fecha_inicio, :numero_sorteo, :precio, :cantidad, :tipo, :devolucion, :agencia_id)
    end
end
