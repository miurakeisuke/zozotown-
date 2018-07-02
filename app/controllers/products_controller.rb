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

    # @current_user_cart_id = current_user.cart.id

    @product_cart = ProductCart.new

    @product_contact = Contact.new
    @contacts = Product.find(params[:id]).contacts
  end

end
