ActionController::Routing::Routes.draw do |map|
  # root behavior
  map.root :controller => 'home', :action => :index

  map.connect '/auth/:provider/callback', :controller => 'sessions', :action => 'create'
  
  # default routes
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
