class CreateAutores < ActiveRecord::Migration
  def self.up
    create_table :autores do |t|
      t.string :nombre
      t.string :apellidos
      t.string :email
      t.string :telefonos
      t.text :biografia

      t.timestamps
    end
  end

  def self.down
    drop_table :autores
  end
end
