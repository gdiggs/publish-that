ActionController::Routing::Routes.draw do |map|
  # root behavior
  map.root :controller => 'home', :action => :index

  # default routes
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
