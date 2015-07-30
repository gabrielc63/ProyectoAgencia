class CreatePreimpresos < ActiveRecord::Migration
  def change
    create_table :preimpresos do |t|
      t.date :fecha_sorteo
      t.date :fecha_inicio
      t.integer :numero_sorteo
      t.float :precio
      t.integer :cantidad
      t.integer :tipo
      t.integer :devolucion
      t.references :agencia, index: true

      t.timestamps
    end
    add_index :preimpresos, :tipo
  end
end
