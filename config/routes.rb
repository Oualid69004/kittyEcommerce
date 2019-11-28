Rails.application.routes.draw do
  get 'users/show'
  root to: 'items#index'

<<<<<<< HEAD
  

  resources :items do
=======
  resources :items, :path => "image" do
>>>>>>> 07c4c8ead70318ff7c3ee67c9b2b2621987e8007
    resources :itemcart
  end
  resources :carts, :path => "panier" do
    resources :order, only: [:create]
    resources :orderitem, only: [:create]
  end
  devise_for :users, :path => "profile"

  resources :admins

  resources :users, only: [:show] do
    resources :avatars, only: [:create]
  end

end
