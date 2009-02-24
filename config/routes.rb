ActionController::Routing::Routes.draw do |map|
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users

  map.resource :session

  map.resources :autores, :has_many => :articulos
  map.resources :articulos
  map.resources :revistas, :has_many => :articulos, :member => {:sql => :get}
  map.root :controller => "revistas"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
