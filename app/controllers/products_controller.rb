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
    @current_product_id = @product.id
    @product_image = @product.images

    @current_user = User.find(1)
    @current_user_cart_id = @current_user.cart.id
    # @product_into_current_cart = @current_user_cart.products

    @product_cart = ProductCart.new
    # form_forでProductCartのインスタンスを作った際、product_id/cart_idが入るようにしている
  end

  private
  def product_cart_params
    params.permit(:id).merge(cart_id: User.find(1).cart.id)
    # ProductCartテーブルへproduct_idとcart_idをあげたい
    # ここのproduct_idは今いるproductから取ってこれていると考えている
    # idはproduct_cartにとってはproduct_idなので使えない？mergeは２回できる？
  end

end
