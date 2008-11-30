class CreateArticulos < ActiveRecord::Migration
  def self.up
    create_table :articulos do |t|
      t.string :titulo
      t.text :contenido
      t.references :revista
      t.references :autor

      t.timestamps
    end
  end

  def self.down
    drop_table :articulos
  end
end
