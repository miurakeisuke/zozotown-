class OrdersController < ApplicationController

  def index
    @current_user_cart_products = current_user.cart.products
  end

  def pay
    @current_user_cart_products = current_user.cart.products
    Payjp.api_key = 'sk_test_4d88d67a345efad56bad436f'
    Payjp::Charge.create(
    amount: @current_user_cart_products.sum(:price) + 200,
    card: params['payjp-token'],
    currency: 'jpy',
    )
    redirect_to "/users/1/carts/1/orders/new"
  end

end
