class CreateRevistas < ActiveRecord::Migration
  def self.up
    create_table :revistas do |t|
      t.string :nombre
      t.datetime :fecha_publicacion
      t.integer :numero
      t.text :editorial

      t.timestamps
    end
  end

  def self.down
    drop_table :revistas
  end
end
