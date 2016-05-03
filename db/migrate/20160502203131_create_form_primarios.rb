class CreateFormPrimarios < ActiveRecord::Migration
  def change
    create_table :form_primarios do |t|
      t.string :emailUsuario
      t.string :nomeCampo
      t.string :tipoCampo
      t.string :itensCombo

      t.timestamps null: false
    end
  end
end
