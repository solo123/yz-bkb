Bkb::Application.routes.draw do
  root :to => 'home#index'
  match '/:all' => 'home#index', :constraints => { :all => /.+/ }
end
