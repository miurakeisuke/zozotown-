class OrdersController < ApplicationController

  def index
    @current_user_cart_products = current_user.cart.products
  end

  def new
  end

  def pay
    @current_user_cart_products = current_user.cart.products
    Payjp.api_key = 'sk_test_4d88d67a345efad56bad436f'
    Payjp::Charge.create(
    amount: @current_user_cart_products.sum(:price) + 200,
    card: params['payjp-token'],
    currency: 'jpy',
    )

    Order.create(pay_params)

    cart_reset

    redirect_to "/users/#{current_user.id}/carts/#{current_user.cart.id}/orders/new"

  end

  private
  def pay_params
    params.permit(:product_id, :user_id).merge(product_id: 1, user_id: current_user.id)
  end

  def cart_product
    current_user.cart.product_carts
  end

  def cart_reset
    current_user.cart.product_carts.destroy_all
  end

end
