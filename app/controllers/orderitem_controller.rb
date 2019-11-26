class OrderitemController < ApplicationController
  def create
      order = Order.create(user: current_user)
      current_user.cart.items.each do |item|
        Orderitem.create(order: order, item: item)
        Itemcart.find_by(cart: current_user.cart, item: item).destroy
      end
      flash[:success] = "Votre commande a bien été prise en compte"
      redirect_to root_path
  end
end
