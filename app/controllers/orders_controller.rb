class OrdersController < ApplicationController
  def index
    @info = User.find(params[:payment][:info])
    @delivery = params[:payment][:delivery]
    @howtopay = params[:payment][:howtopay]
  end
end
