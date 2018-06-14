class UsersController < ApplicationController
  def index
    @message = "Good morning"
  end
  def create
    @create_user_cart = Cart.create
  end
end
