class ProductsController < ApplicationController
  def index
  end

  def show
    add_breadcrumb 'ZOZOTOWN', "/"
    add_breadcrumb 'SHOPNAME', "/"
    add_breadcrumb 'トップス', "/"
    add_breadcrumb 'シャツ/ブラウス', "/"
    add_breadcrumb 'アイテム詳細'
  end

end
