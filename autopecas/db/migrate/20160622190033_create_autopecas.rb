class CreateAutopecas < ActiveRecord::Migration
  def change
    create_table :autopecas do |t|
      t.string :nome
      t.string :num_fabrica
      t.string :montadora
      t.text :aplicacao
      t.string :valor_compra
      t.string :valor_venda
      t.string :codigo_peca
      t.integer :estoque
      t.string :grupo
      t.text :info
      t.string :pratileira

      t.timestamps
    end
  end
end
