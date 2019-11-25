Rails.application.routes.draw do



  root to: 'items#index'
  
  resources :items
  resources :carts
  devise_for :users




end
