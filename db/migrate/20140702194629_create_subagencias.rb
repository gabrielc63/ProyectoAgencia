class CreateSubagencias < ActiveRecord::Migration
  def change
    create_table :subagencias do |t|
      t.integer :numero_subagencia
      t.string :titular
      t.string :domicilio
      t.integer :telefono
      t.string :email
      t.integer :agencia_id

      t.timestamps
    end
  end
end
