
#TesteAppRD - Campos Personalizados Ruby on Rails Ivan Amorim

<b>Resumo do sistema:</b><br> 
O Sistema inicialmente lista, edita, deleta e cadastra usuários, com um já devidamente cadastrado você pode logar no sistema, dentro do sistema 
tem uma listagem dos seus clientes cadastrados, podendo também adcionar novos, edita-los e excluí-los se for o caso.<br> 
<b>OBS:</b> Clientes ainda estão com campos de cadastro fixos (não personalizados).

1) Baixe os arquivos do projeto no Repositório do GitHub.

2) Importe o projeto no seu computador com ele devidamente configurado e rodando o ruby and rails estou Utilizando: 
	Versão do Ruby 2.1.8
	Versão do Rails 4.2.6
	Versão da Gem 2.6.3
	
	Não sabe instalar ?
	Link de um bom video para ajudar:
	https://www.youtube.com/watch?v=SPM9nwUQqZ0 (Versões antigas mas é passo a passo processo de instalação)

3) Abra no Windows o prompt de comando (Digitando "cmd" no buscador do windows) 
   de preferencia como admin (depois de pesquisar basta clicar com botão direito e clicar em executar como administrador).

4) No prompt de comando vá entrando nas pastas até entrar na pasta do seu projeto.<br>
	No prompt de comando(cmd):
	Para entrar em pastas basta digitar:  
	
	cd nome_da_sua_pasta
	
	Para sair e subir para a pasta de fora basta digitar: 
	
	cd..

	<< (Dica) >> 
	<< Voce pode ir diretamente na pasta e clicar com botão direito do mouse segurando shift e clicar em abrir janela de comando aqui >>
	
5) Quando chegar dentro da pasta raiz do projeto cujo nome é TesteAppRD_IvanAmorim digite comando abaixo. 
	
	<b>rails s</b>   
	
	Assim irá rodar o servidor do rails na sua maquina
	
6)  Com o servidor local rodando na sua maquina basta digitar na url do seu navegador.

	<b>http://localhost:3000/</b>

7) Tela Principal:

	O programa irá abrir uma tela inicial com o Menu:
	
	Inicio | Lista de Usuarios RD | Cadastrar Novo Usuário RD | Logar

	Inicio: Volta para esta tela de inicio.
	
	Lista de Usuarios RD: Lista os usuariosRD cadastrados podendo ver todos cadastrados, podendo editar, deletar.

	Cadastrar Novo Usuário RD: Cadastra um novo usuarioRD.
	
	Logar: Loga no sistema, se o seu usuarioRD já estiver cadastrado.
	
8) Tela de Principal (Logado):

	O programa irá abrir em uma tela inicial com o Menu:
	
	Inicio | Lista de Usuarios RD | Clientes de amorim-ivan@hotmail.com | Cadastrar Novo Usuário RD | amorim-ivan@hotmail.com | Sair 

	Inicio: Volta para esta tela de inicio.
	
	Lista de Usuarios RD: Lista os usuariosRD cadastrados podendo ver todos cadastrados, podendo editar, deletar.
	
	Clientes de amorim-ivan@hotmail.com: Lista todos os clientes cadastrados do usuário logado podendo ver todos, editar, deletar.
	
	Cadastrar Novo Usuário RD: Cadastra um novo usuarioRD.
	
	amorim-ivan@hotmail.com: Ao clicar em cima do email do usuário cadastrado mostra-se todos os dados dele.
	
	Sair: Sai da área do usuário no sistema e volta para para a página principal.
	

9) Tela de Login/cadastro:

	O programa irá abrir em uma tela com dois EditText e um botão:

	EditText-1) Colocar o email do usuário, caso já tenha no banco ele emite um alerta email já existente.
	
	EditText-2) Colocar a senha do usuário, salva criptografado no banco de dados.

	Button-1) Clicando no Botão registrar, salva o usuário no banco e já loga.
	
	
10) Telas de Exibição dos dados

	Ao clicar nos botões "show" irá aparecer os dados do usuário selecionado assim como:

	Nome e Email
	
11) Telas de Cadastro:

	Aparecerá 3 EditText e um botão:
	
	EditText-1) Colocar o nome do usuário que será cadastrado.
	
	EditText-2) Colocar o email do usuário que será cadastrado.

	EditText-3) Colocar senha / se for na area de cliente será telefone.
	
	Button-2) Clicando no Botao Register ele irá salvar os dados preenchidos e também ira criar um id no banco.
	
12) Validações e MSGs:
	
	Validação/MSGs-1) Ao entrar com usuário ou senha errados ou nao cadastrados no banco aparecerá a seguinte mensagem ("Invalid email or password.!").
	
	Validação/MSGs-3) Ao clicar em register em uma tela de cadastro e se for salvo com sucesso aparecerá a seguinte mensagem ("Usuário criado com sucesso!!").

	Validação/MSGs-4) Ao clicar em editar em uma tela de cadastro e se for salvo com sucesso aparecerá a seguinte mensagem ("Usuário atualizado com sucesso!!").

	Validação/MSGs-5) Ao clicar em deletar em uma tela de cadastro e se for salvo com sucesso aparecerá a seguinte mensagem ("Usuário excluido com sucesso!!").	
.

