class ItemcartController < ApplicationController
  def create
    @itemcartforid = Itemcart.create(cart: current_user.cart, item: Item.find(params[:item_id]))
    redirect_to root_path
  end

  def destroy
    @itemcart = Itemcart.find(params[:id])
    @itemcart.destroy
    redirect_to cart_path(current_user.cart.id)
  end
end
