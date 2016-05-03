class CreateCamposExtras < ActiveRecord::Migration
  def change
    create_table :campos_extras do |t|
      t.string :emailCliente
      t.string :nomeCampo
      t.string :tipoCampo
      t.string :valorCampo
      t.string :itensCombox
      t.string :itemselCombobox

      t.timestamps null: false
    end
  end
end
