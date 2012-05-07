PlugInApp::Application.routes.draw do
 
get 'users', :controller => "home", :action => "index", :as => :users
post "users", :controller => "home", :action => "create", :as => :users


get "users/new", :controller => "home", :action => "new", :as => :new_user
get 'users/:id/edit', :controller => "home", :action => "edit", :as => :edit_user


get "users/:id", :controller => "home", :action => "show", :as => :user
put "users/:id", :controller => 'home', :action => "update", :as => :user

delete "users/:id", :controller => "home", :action => "destroy", :as => :user





end
