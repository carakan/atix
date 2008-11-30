ActionController::Routing::Routes.draw do |map|
  map.resources :autores
  map.resources :articulos
  map.resources :revistas
  map.root :controller => "revistas"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
