class DropJuegosImpresoTable < ActiveRecord::Migration
  def up
    drop_table :juegos_impreso
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
