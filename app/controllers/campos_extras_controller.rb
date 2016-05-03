class CamposExtrasController < ApplicationController
  before_action :set_campos_extra, only: [:show, :edit, :update, :destroy]

  # GET /campos_extras
  # GET /campos_extras.json
  def index
    @campos_extras = CamposExtra.all
  end

  # GET /campos_extras/1
  # GET /campos_extras/1.json
  def show
  end

  # GET /campos_extras/new
  def new
    @campos_extra = CamposExtra.new
  end

  # GET /campos_extras/1/edit
  def edit
  end

  # POST /campos_extras
  # POST /campos_extras.json
  def create
    @campos_extra = CamposExtra.new(campos_extra_params)

    respond_to do |format|
      if @campos_extra.save
        format.html { redirect_to @campos_extra, notice: 'Campos extra was successfully created.' }
        format.json { render :show, status: :created, location: @campos_extra }
      else
        format.html { render :new }
        format.json { render json: @campos_extra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campos_extras/1
  # PATCH/PUT /campos_extras/1.json
  def update
    respond_to do |format|
      if @campos_extra.update(campos_extra_params)
        format.html { redirect_to @campos_extra, notice: 'Campos extra was successfully updated.' }
        format.json { render :show, status: :ok, location: @campos_extra }
      else
        format.html { render :edit }
        format.json { render json: @campos_extra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campos_extras/1
  # DELETE /campos_extras/1.json
  def destroy
    @campos_extra.destroy
    respond_to do |format|
      format.html { redirect_to campos_extras_url, notice: 'Campos extra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campos_extra
      @campos_extra = CamposExtra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campos_extra_params
      params.require(:campos_extra).permit(:emailCliente, :nomeCampo, :tipoCampo, :valorCampo, :itensCombox, :itemselCombobox)
    end
end
