Bkb::Application.routes.draw do
  root :to => 'home#index'
  match '/visit' => 'home#list'
  match '/:all' => 'home#index', :constraints => { :all => /.+/ }
end
