Bkb::Application.routes.draw do
  root :to => 'home#index'
  match '*' => 'home#index'
end
