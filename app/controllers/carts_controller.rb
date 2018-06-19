class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
    @cart_products = @cart.products
  end

  def update
  end

  def destroy
  end
end
