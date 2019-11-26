Rails.application.routes.draw do
  root to: 'items#index'

  resources :items do
    resources :itemcart
  end
  resources :carts
  devise_for :users
end
