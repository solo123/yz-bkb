Bkb::Application.routes.draw do
  root :to => 'home#index'
  match '/visit' => 'home#list'
  match '/vamp/mtkbook/details.aspx' => 'demo#details'
  match '/:all' => 'home#index', :constraints => { :all => /.+/ }
end
