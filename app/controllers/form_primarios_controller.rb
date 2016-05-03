class FormPrimariosController < ApplicationController
  before_action :set_form_primario, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!
  before_action :carregaClientes
  
  def carregaClientes
	@clientes = Cliente.where('emailUsuario = ?', current_usuario.email)
	@form_primarios = FormPrimario.where('emailUsuario = ?', current_usuario.email)
  end
  
  # GET /form_primarios
  # GET /form_primarios.json
  def index
	@form_primarios = FormPrimario.where('emailUsuario = ?', current_usuario.email)
  end

  # GET /form_primarios/1
  # GET /form_primarios/1.json
  def show
  end

  # GET /form_primarios/new
  def new
    @form_primario = FormPrimario.new
  end

  # GET /form_primarios/1/edit
  def edit
  end

  # POST /form_primarios
  # POST /form_primarios.json
  def create
    @form_primario = FormPrimario.new(form_primario_params)
	
	@clientes.each do |clientesTamp|
		@campos_extra = CamposExtra.new
		@campos_extra.emailCliente = clientesTamp.email;
		@campos_extra.nomeCampo = @form_primario.nomeCampo;
		@campos_extra.tipoCampo = @form_primario.tipoCampo;
		@campos_extra.itensCombox = @form_primario.itensCombo;
		@campos_extra.save
	end
	
    respond_to do |format|
		@form_primario.emailUsuario = current_usuario.email;
		  if @form_primario.save
			format.html { redirect_to @form_primario, notice: 'Form primario was successfully created.' }
			format.json { render :show, status: :created, location: @form_primario }
		  else
			format.html { render :new }
			format.json { render json: @form_primario.errors, status: :unprocessable_entity }
		  end
    end
	
  end

  # PATCH/PUT /form_primarios/1
  # PATCH/PUT /form_primarios/1.json
  def update
	respond_to do |format|
      if @form_primario.update(form_primario_params)
        format.html { redirect_to @form_primario, notice: 'FormPrimario atualizado com sucesso.' }
        format.json { render :show, status: :created, location: @form_primario }
      else
        format.html { render :new }
        format.json { render json: @form_primario.errors, status: :unprocessable_entity }
      end
    end
	
	@clientes.each do |clientesTamp|
	    @campos_extra = CamposExtra.where('emailCliente = ?', clientesTamp.email)
		if @campos_extra.first != nil
			@cont = 0;
			@form_primarios.each do |form_primarioTamp|
				@campos_extra[@cont].emailCliente = clientesTamp.email;
				@campos_extra[@cont].nomeCampo = form_primarioTamp.nomeCampo;
				@campos_extra[@cont].tipoCampo = form_primarioTamp.tipoCampo;
				@campos_extra[@cont].itensCombox = form_primarioTamp.itensCombo;
				@campos_extra[@cont].save
				@cont = @cont+1;
			end
		end
	end
		
  end

  # DELETE /form_primarios/1
  # DELETE /form_primarios/1.json
  def destroy
	@clientes.each do |clientesTamp|
	    @campos_extra = CamposExtra.where('emailCliente = ?', clientesTamp.email)
		if @campos_extra.first != nil
			@campos_extra.each do |camposExtrasTamp|
				if camposExtrasTamp.nomeCampo == @form_primario.nomeCampo
					camposExtrasTamp.destroy
				end
			end
		end
	end
  
    @form_primario.destroy
    respond_to do |format|
      format.html { redirect_to form_primarios_url, notice: 'Form primario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form_primario
      @form_primario = FormPrimario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form_primario_params
      params.require(:form_primario).permit(:emailUsuario, :nomeCampo, :tipoCampo, :itensCombo)
    end
end
