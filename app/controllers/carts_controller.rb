class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
    @cart_products = @cart.products
    @product_cart = ProductCart.ids
  end

  def update
  end

  def destroy
      ProductCart.find(params[:id]).destroy
      redirect_to "/users/#{current_user.id}/carts/#{current_user.cart.id}"
  end
end
