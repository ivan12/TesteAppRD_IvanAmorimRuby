
#Teste App RD - Campos Personalizados Ruby and Rails Ivan Amorim

1) Baixe os arquivos do projeto no Repositório do GitHub.

2) Importe o projeto no seu computador com ele devidamente configurado e rodando com ruby and rails: Estou Utilizando: 
	Versão do Ruby 2.1.8
	Versão do Rails 4.2.6
	Versão da Gem 2.6.3
	
	Não sabe instalar ?
	Link de um bom video para ajudar:
	https://www.youtube.com/watch?v=SPM9nwUQqZ0 (Versões antigas mas é passo a passo processo de instalação)

3) Abra no Windows o prompt de comando (Digitando "cmd" no buscador do windows) 
   de preferencia como admin (depois de pesquisar basta clicar com botão direito e clicar em executar como administrador).

4) No prompt de comando vá entrando nas pastas até entrar na pasta do seu projeto.
	No prompt de comando(cmd):
	Para entrar em pastas basta digitar:  
	
	cd nome_da_sua_pasta
	
	Para sair e subir para a pasta de fora basta digitar: 
	
	cd..

	<< (Dica) >> 
	<< Voce pode ir diretamente na pasta e clicar com botão direito do mouse segurando shift e clicar em abrir janela de comando aqui >>
	
5) Quando chegar dentro da pasta raiz do projeto cujo nome é TesteAppRD_IvanAmorim basta digitar: 
	rails s   
	
	Assim irá rodar o servidor do rails na sua maquina
	
6)  Com o servidor local rodando na sua maquina basta digitar na url do seu navegador:

	http://localhost:3000/

7) Tela Principal:

	O programa irá abrir em uma tela inicial com Menu:
	
	Inicio | Lista de Usuarios RD | Cadastrar Novo Usuário RD | Logar :

	Inicio) Volta para esta tela de inicio.
	
	Lista de Usuarios RD) Lista os usuariosRD cadastrados podendo ver todos cadastrados, podendo editar, deletar.

	Cadastrar Novo Usuário RD) Cadastra um novo usuarioRD.
	
	Logar) Loga no sistema, se o seu usuarioRD já estiver cadastrado.
	
8) Tela de Principal (Logado):

	O programa irá abrir em uma tela inicial com Menu:
	
	Inicio | Lista de Usuarios RD | Cadastrar Novo Usuário RD | Logar :

	Inicio) Volta para esta tela de inicio.
	
	Lista de Usuarios RD) Lista os usuariosRD cadastrados podendo ver todos cadastrados, podendo editar, deletar.

	Cadastrar Novo Usuário RD) Cadastra um novo usuarioRD.
	
	Logar) Loga no sistema, se o seu usuarioRD já estiver cadastrado.
	

9) Tela de Login/cadastro:

	O programa irá abrir em uma tela com dois EditText e um botão:

	EditText-1) Colocar o email do usuario caso já tenha no banco ele emite um alerta email já existente.
	
	EditText-2) Colocar a senha do usuario, salva criptografado no banco de dados.

	Button-1) Clicando no Botao registrar salva o usuario no banco e já loga.
	
	
10) Tela de Exibição dos dados

	Ao clicar em show irá aparecer os dados do usuario em questão assim como.

	Nome e Email
	
11) Telas de Cadastro:

	Aparecerá 3 EditText e um botão:
	
	EditText-1) Colocar o nome do usuario que será cadastrado.
	
	EditText-2) Colocar o email do usuario que será cadastrado.

	EditText-3) Colocar senha nova.
	
	Button-2) Clicando no Botao Register ele irá salvar o nome do usuario digitado juntamente com a sua senha (também ira criar um id).
	
12) Validações e MSGs:
	
	Validação/MSGs-1) Ao entrar com usuario ou senha errados ou nao cadastrados no banco aparecerá a seguinte mensagem ("Invalid email or password.!").
	
	Validação/MSGs-3) Ao clicar em register em uma tela de cadastro e se for salvo com sucesso aparecerá a seguinte mensagem ("Usuario criado com sucesso!!").

	Validação/MSGs-4) Ao clicar em editar em uma tela de cadastro e se for salvo com sucesso aparecerá a seguinte mensagem ("Usuario atualizado com sucesso!!").

	Validação/MSGs-5) Ao clicar em deletar em uma tela de cadastro e se for salvo com sucesso aparecerá a seguinte mensagem ("Usuario excluido com sucesso!!").	
.
