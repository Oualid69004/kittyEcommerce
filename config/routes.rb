Rails.application.routes.draw do
  get 'adminpage/index'
  get 'users/show'
  root to: 'items#index'

  resources :items do
    resources :itemcart
  end
  resources :carts do
    resources :order, only: [:create]
  end
  devise_for :users
end
