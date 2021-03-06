class DepositsController < ApplicationController
  def index
    @deposits = Deposit.all.includes(:user)
    @warehouses = Warehouse.all
  end

  def new
    @deposit = Deposit.new
  end

  def create
    @deposit = Deposit.new(deposit_params)
    if @deposit.save
      redirect_to deposits_path
    else
      render :new
    end
  end

  private
  def deposit_params
    params.require(:deposit).permit(:name, :assesment_price, :user_id, :warehouse_id, :brand, :size)
  end
end
