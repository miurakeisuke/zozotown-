class ProductsController < ApplicationController

  def index
    @products = Product.all
    @images = Image.all
  end

  def show
    add_breadcrumb 'ZOZOTOWN', "/"
    add_breadcrumb 'SHOPNAME', "/"
    add_breadcrumb 'トップス', "/"
    add_breadcrumb 'シャツ/ブラウス', "/"
    add_breadcrumb 'アイテム詳細'
    @product = Product.find(params[:id])
    @product_image = @product.images
    @shops = Shop.all
    @shop = @shops.find(params[:id])

    # @user = User.find(params[:id])
    # @user_cart_id = @user.cart.id

    @product_cart = ProductCart.new
    # form_forでProductCartのインスタンスを作った際、product_id/cart_idが入るようにしている
  end

end
