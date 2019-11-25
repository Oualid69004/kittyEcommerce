class ItemcartController < ApplicationController
  def create
    Itemcart.create(cart: current_user.cart, item: Item.find(params[:item_id]))
    redirect_to root_path
  end
end
