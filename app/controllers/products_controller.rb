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

    @product_into_current_cart = User.find(1).cart.products
    # User.find(1)は後でcurrent_cartになおしてね
  end

end
