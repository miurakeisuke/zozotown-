class CartsController < ApplicationController
  def show
    @cart = Cart.all.find(params[:id])
    @cart_product = @cart.products
  end

  def update
  end

  def destroy
  end
end
