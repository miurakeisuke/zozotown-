class ProductCartsController < ApplicationController

  def create
    @new_product_cart = ProductCart.new(cart_params)
    if @new_product_cart.save
      move_to_current_cart
    else
      redirect_to root_path
    end
  end

  def update
    move_to_current_cart
  end

  private
  def move_to_current_cart
    redirect_to "/users/1/carts/1"
  end

  def cart_params
    params.require(:product_cart).permit(:product_id, :cart_id)
  end

end
