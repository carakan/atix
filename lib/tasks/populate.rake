namespace :db do
  desc "Llenar la base de datos"
  task :populate => :environment do
    require 'populator'
    require 'faker'

    [Autor, Articulo, Revista].each(&:delete_all)

    Autor.populate 100 do |p|
      p.nombre = Faker::Name.first_name
      p.apellidos = Faker::Name.last_name
      p.email = Faker::Internet.email(p.nombre)
      p.telefonos = Faker::PhoneNumber.phone_number
      p.biografia = Populator.sentences(2..10)

      Articulo.populate 1..4 do |a|
        a.titulo = Populator.words(5..10)
        a.contenido = Populator.sentences(2..10)
        a.revista_id = 1..50
        a.autor_id = p.id
      end
    end
    
    i=1
    Revista.populate 50 do |r|
      r.nombre = Populator.words(5..10)
      r.fecha_publicacion = 1.year.ago .. Time.now
      r.numero = i
      r.editorial = Populator.sentences(5..10)
      i +=1
    end
  end
end
