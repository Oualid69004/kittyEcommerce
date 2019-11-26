class OrderController < ApplicationController
  def create
    current_user.cart.items.each do |item|
      Order.create(user: current_user, item: item)
      Itemcart.find_by(cart: current_user.cart, item: item).destroy
    end
    flash[:success] = "Votre commande a bien été prise en compte"
    redirect_to root_path
  end
end
