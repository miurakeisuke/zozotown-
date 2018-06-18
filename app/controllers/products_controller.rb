class ProductsController < ApplicationController
  def index
  end

  def show
    add_breadcrumb 'ZOZOTOWN', "/"
    add_breadcrumb 'SHOPNAME', "/"
    add_breadcrumb 'トップス', "/"
    add_breadcrumb 'シャツ/ブラウス', "/"
    add_breadcrumb 'アイテム詳細'
    @product = Product.all.find(params[:id])
    @product_image = @product.images

    @current_user = User.find(1)
    @current_user_cart = @current_user.cart
    @product_into_current_cart = @current_user_cart.products
    binding.pry
    @new_product_cart = ProductCart.new(product_cart_params)
  end

  private
  def product_cart_params
    params.require(:product_cart).merge(product_id: params[:product_id], cart_id: User.find(1).cart.id)
  end

end
