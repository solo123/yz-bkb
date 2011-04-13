Bkb::Application.routes.draw do
  root :to => 'home#index'
  match '/aaa' => 'home#show'
  match '/:all' => 'home#index', :constraints => { :all => /.+/ }
  match '/bbb' => 'home#show'
end
