# == Schema Information
# Schema version: 20081011115257
#
# Table name: articulos
#
#  id         :integer(4)      not null, primary key
#  titulo     :string(255)
#  contenido  :text
#  revista_id :integer(4)
#  autor_id   :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class Articulo < ActiveRecord::Base
  validates_presence_of :titulo, :contenido
  belongs_to :revista
  belongs_to :autor
  
  
  def veamos_como
    a=1
    b==1
    
    true
  end
end
