class ShopsController < ApplicationController
  def index
    add_breadcrumb 'ZOZOTOWN', "/"
    add_breadcrumb 'ショップから探す'
  end
end
