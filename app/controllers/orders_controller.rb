class OrdersController < ApplicationController
  def index
    @info = User.find(params[:payment][:info])
    @delivery = params[:payment][:delivery]
    @howtopay = params[:payment][:howtopay]
    @current_user_cart_products = current_user.cart.products
    # binding.pry
  end

  def show
  end
end
