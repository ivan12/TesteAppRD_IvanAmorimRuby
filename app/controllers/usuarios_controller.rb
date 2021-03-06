class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]
  before_action :carregaClientes
  
  def carregaClientes
	@clientes = Cliente.all
  end
  
  def index
    @usuarios = Usuario.all
	@emailOld = ""
  end
  
  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
  end
  
  # GET /usuarios/new
  def new
    @usuario = Usuario.new
  end

  # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)

    respond_to do |format|
      if @usuario.save
        format.html { redirect_to @usuario, notice: 'Usuario criado com sucesso.' }
        format.json { render :show, status: :created, location: @usuario }
      else
        format.html { render :new }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update
    respond_to do |format|
	  @emailOld = @usuario.email
      if @usuario.update(usuario_params)
	   @clientes.each do |clientesTamp|
			if clientesTamp.emailUsuario == @emailOld
				clientesTamp.update_column(:emailUsuario, @usuario.email);
			end
	  end
        format.html { redirect_to @usuario, notice: 'Usuario atualizado com sucesso.'}
        format.json { render :show, status: :ok, location: @usuario }
      else
        format.html { render :edit, notice: 'Nao conseguiu salvar o usuario.'  }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_url, notice: 'Usuario excluido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit(:nome, :email, :password, :password, :password_confirmation, :encrypted_password)
    end
end
