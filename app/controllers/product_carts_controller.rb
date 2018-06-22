class ProductCartsController < ApplicationController

  def create
    @new_product_cart = ProductCart.new(cart_params)
    if @new_product_cart.save
      move_to_current_cart
    else
      # render template: "products/show"
      # redirect_to product_path(params[:product_id])
      # 今回はエラーが発生するのでここの条件分岐は実装しない
    end
  end

  def update
    move_to_current_cart
  end

  private
  def move_to_current_cart
    redirect_to "/users/#{current_user.id}/carts/#{current_user.id}"
  end

  def cart_params
    params.require(:product_cart).permit(:product_id, :cart_id)
  end

end
