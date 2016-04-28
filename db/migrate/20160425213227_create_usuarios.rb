class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
	  t.string :email
      t.string :nome
      t.string :encrypted_password
    end
  end
end
