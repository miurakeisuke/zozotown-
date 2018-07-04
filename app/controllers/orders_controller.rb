class OrdersController < ApplicationController

  def index
    @current_user_cart_products = current_user.cart.products
  end

  def new
  end

  def pay
    @current_user_cart_products = current_user.cart.products

    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    Payjp::Charge.create(
    amount: @current_user_cart_products.sum(:price) + 200,
    card: params['payjp-token'],
    currency: 'jpy',
    )

    current_user.cart.products.each do |each_product|
      Order.create(product_id: each_product.id, user_id: current_user.id)
    end

    cart_reset

    redirect_to new_user_cart_order_path

  end

  private

  def cart_reset
    current_user.cart.product_carts.destroy_all
  end

end
