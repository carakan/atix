ActionController::Routing::Routes.draw do |map|
  map.resources :autores, :has_many => :articulos
  map.resources :articulos
  map.resources :revistas, :has_many => :articulos
  map.root :controller => "revistas"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
