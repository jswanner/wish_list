ActionController::Routing::Routes.draw do |map|
  map.resources :events
  map.resources :users, :has_many => :wishes

  map.root :controller => :users, :action => :index
end
