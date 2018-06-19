class UsersController < ApplicationController
  def index
  end
  def create
    @create_user_cart = Cart.create
    # create失敗時の条件分岐を記載する
  end
end
