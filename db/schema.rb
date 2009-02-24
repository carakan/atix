# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090223223209) do

  create_table "articulos", :force => true do |t|
    t.string   "titulo"
    t.text     "contenido"
    t.integer  "revista_id"
    t.integer  "autor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "autores", :force => true do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "email"
    t.string   "telefonos"
    t.text     "biografia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "correspondencias", :force => true do |t|
    t.datetime "fecha"
    t.text     "origen"
    t.string   "cite"
    t.integer  "hojas"
    t.text     "referencia"
    t.string   "destino1"
    t.string   "destino2"
    t.string   "destino3"
    t.string   "destino4"
    t.string   "destino5"
    t.string   "documento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "revistas", :force => true do |t|
    t.string   "nombre"
    t.datetime "fecha_publicacion"
    t.integer  "numero"
    t.text     "editorial"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.boolean  "admin",                                    :default => false
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
