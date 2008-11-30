# == Schema Information
# Schema version: 20081011115257
#
# Table name: revistas
#
#  id                :integer(4)      not null, primary key
#  nombre            :string(255)
#  fecha_publicacion :datetime
#  numero            :integer(4)
#  editorial         :text
#  created_at        :datetime
#  updated_at        :datetime
#

class Revista < ActiveRecord::Base
  validates_presence_of :nombre, :editorial
  validates_numericality_of :numero
  has_many :articulos
end
