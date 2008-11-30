# == Schema Information
# Schema version: 20081011115257
#
# Table name: autores
#
#  id         :integer(4)      not null, primary key
#  nombre     :string(255)
#  apellidos  :string(255)
#  email      :string(255)
#  telefonos  :string(255)
#  biografia  :text
#  created_at :datetime
#  updated_at :datetime
#

class Autor < ActiveRecord::Base
  validates_presence_of :nombre, :apellidos, :email
  has_many :articulos
end
