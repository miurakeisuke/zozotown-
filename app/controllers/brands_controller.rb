class BrandsController < ApplicationController
  def index
    add_breadcrumb 'ZOZOTOWN', "/"
    add_breadcrumb 'ブランドから探す'
  end
end
