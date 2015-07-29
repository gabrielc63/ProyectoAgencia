class CreateImpresos < ActiveRecord::Migration
  def change
    create_table :impresos do |t|
      t.date :fecha
      t.integer :quiniela
      t.integer :quini_ex
      t.integer :loteria_online
      t.integer :otros_juegos
      t.integer :otros_gastos
      t.decimal :premios
      t.references :subagencia, index: true

      t.timestamps
    end
  end
end
