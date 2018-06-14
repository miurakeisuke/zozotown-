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

    current_cart = current_user.cart_id
    @product_into_cart = current_cart
  end

end
