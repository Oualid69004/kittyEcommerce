Rails.application.routes.draw do
  get 'users/show'
  root to: 'items#index'

  resources :items do
    resources :itemcart
  end
  resources :carts do
    resources :order, only: [:create]
    resources :orderitem, only: [:create]
  end
  devise_for :users

  resources :admins

end
