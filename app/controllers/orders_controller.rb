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

  def pay
    Payjp.api_key = PAYJP_SECRET_KEY
    Payjp::Charge.create(
    :amount => 3500,
    :card => params['payjp-token'],
    :currency => 'jpy',
    )
  end
end
