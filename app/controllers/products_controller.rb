class ProductsController < ApplicationController

  def index
  end

  def show
    add_breadcrumb 'ZOZOTOWN', "/"
    add_breadcrumb 'SHOPNAME', "/"
    add_breadcrumb 'トップス', "/"
    add_breadcrumb 'シャツ/ブラウス', "/"
    add_breadcrumb 'アイテム詳細'
    @product = Product.find(params[:id])
    @product_image = @product.images

    @current_user = User.find(1)
    @current_user_cart_id = @current_user.cart.id

    @product_cart = ProductCart.new
    # form_forでProductCartのインスタンスを作った際、product_id/cart_idが入るようにしている
  end

end
