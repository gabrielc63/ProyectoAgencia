class CreateJuegosImpreso < ActiveRecord::Migration
  def change
    create_table :juegos_impreso do |t|
      t.date :fecha
      t.integer :quiniela
      t.integer :quini_ex
      t.integer :loteria_online
      t.integer :otros_juegos
      t.integer :otros_gastos
      t.decimal :premios
      t.integer :subagencia_id

      t.timestamps
    end
  end
end
