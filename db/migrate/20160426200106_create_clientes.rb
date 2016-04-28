class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.text :emailUsuario
      t.text :nome
      t.text :email
      t.text :telefone

      t.timestamps null: false
    end
  end
end
