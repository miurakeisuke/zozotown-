class RankingsController < ApplicationController
  def index
    add_breadcrumb 'ZOZOTOWN', "/"
    add_breadcrumb 'ランキングから探す'
  end
end
