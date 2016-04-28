class Usuario < ActiveRecord::Base
self.table_name = 'usuarios'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  attr_accessible :nome, :email, :encrypted_password, :password, :password_confirmation
  
end
