class CreateAgencias < ActiveRecord::Migration
  def change
    create_table :agencias do |t|
      t.integer :numero_agencia
      t.string :titular
      t.string :domicilio
      t.integer :telefono
      t.string :localidad
      t.string :email
      t.string :password_digest
      t.string :remember_token

      t.timestamps
    end
  end
end
