
#TestAppRD - Custom fields Ruby on Rails Ivan Amorim

<b>System Overview:</b><br> 
The first system, list, edit, delete and registers users, with an already properly registered you can log into the system, within the system
It has a list of its registered customers and can also later add new, edit them and delete them if necessary.<br> 
<b>Note:</b> Customers are still fixed registration fields (not custom).

1) Download the project files in the repository GitHub.

2) Import the project on your computer with it properly configured and running ruby and rails,I'm using: 
	Version of Ruby 2.1.8
	Version of Rails 4.2.6
	Version of Gem 2.6.3
	
	You do not know how to install?
	this video will help you:
	https://www.youtube.com/watch?v=SPM9nwUQqZ0 (Older versions but step by step installation process)

3) Open the Windows command prompt (typing "cmd" in the windows browser)
    preferably as admin (after searching just right click and click Run as administrator).

4) At the command prompt go entering the folder to go into your project folder. <br>
	At the command prompt (cmd):
	To enter into folders just type:
	
	cd name_of_your_folder
	
	To get out and climb to the folder out just type:
	
	cd..

	<< (Tip) >> 
	<< You can go directly to the folder and right click the mouse holding shift and click Open command window here >>
	
5) When you arrive in the project root folder whose name is TesteAppRD_IvanAmorim type following command:
	
	rails s   
	
	So will run rails server on your machine
	
6)  With the local server running on your machine simply type in the URL of your browser:

	http://localhost:3000/

7) Main screen:

	The program will open a home screen with the menu:
	
	Inicio | Lista de Usuarios RD | Cadastrar Novo Usuário RD | Logar

	Inicio: Back to this start screen.
	
	Lista de Usuarios RD: List registered users can see all registered and can edit, delete.

	Cadastrar Novo Usuário RD: Register a new user.
	
	Logar: Logs in, if your user is already registered.
	
8) Main screen (Logged):

	The program will open in an initial screen with the menu:
	
	Inicio | Lista de Usuarios RD | Clientes de amorim-ivan@hotmail.com | Cadastrar Novo Usuário RD | amorim-ivan@hotmail.com | Sair 

	Inicio: Back to this start screen.
	
	Lista de Usuarios RD: List registered users can see all registered and can edit, delete.
	
	Clientes de amorim-ivan@hotmail.com: List all registered customers of the logged in user can see all, edit, delete.
	
	Cadastrar Novo Usuário RD: Register a new user.
	
	amorim-ivan@hotmail.com: By clicking on the user's registered email shows up all data from it.
	
	Sair: Get out of the user area in the system and back to the main page.
	

9) Screen Login / Register:

	The program will open a screen with two EditText and a button:

	EditText-1) Put the user email, if you already have in the bank it emits an existing email alert.
	
	EditText-2) Place the user's password, saved encrypted in the database.

	Button-1) Clicking the record button, the user saves on the bench and have logs.
	
	
10) Display screens of data

	By clicking the button "show" will show the selected user data as well as:

	Name and Email
	
11) Registration screens:

	3 appears EditText and a button:
	
	EditText-1) Put the user name to be registered.
	
	EditText-2) Put the user email to be registered.

	EditText-3) Enter password / if the client area without phone.
	
	Button-2) By clicking on the Register it will save the completed data and also will create an id on the bench.
	
12) Validations and MSGs:
	
	Validation/MSGs-1) When entering user or wrong password or not registered in the bank the following message appears ("Invalid email or password.!").
	
	Validation/MSGs-3) By clicking Register in a registration screen and is saved successfully the following message appears ("Usuário criado com sucesso!!").

	Validation/MSGs-4) By clicking edit in a registration screen and is saved successfully the following message appears ("Usuário atualizado com sucesso!!").

	Validation/MSGs-5) When you click delete on a registration screen and is saved successfully the following message appears ("Usuário excluido com sucesso!!").	
.

