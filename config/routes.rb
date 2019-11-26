Rails.application.routes.draw do
  get 'adminpage/index'
  get 'users/show'
  root to: 'items#index'

  resources :items do
    resources :itemcart
  end
  resources :carts
  devise_for :users
end
