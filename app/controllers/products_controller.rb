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
    @current_user_cart = User.find(1).cart
    @product_into_current_cart = User.find(1).cart.products
    # User.find(1)は後でcurrent_cartになおして
    # formのhidden(今いるページのid)→appendで現れる→save
    # forom_forの設定自体のデータは記述するが、そのものを書くのではない
    # リダイレクト先
  end

end
