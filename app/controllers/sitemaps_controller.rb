class SitemapsController < ApplicationController
  def index
    add_breadcrumb 'ZOZOTOWN', "/"
    add_breadcrumb 'サイトマップ'
  end
end
