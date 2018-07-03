class WarehousesController < ApplicationController

  def new
     @warehouse = Warehouse.new
  end

  def edit
    add_breadcrumb 'ZOZOTOWN', "/"
    add_breadcrumb '衣服預かり'
    @deposits = Deposit.where(user_id: current_user.id).includes(:user)
    @warehouse = Warehouse.new
  end

  def create
    @warehouse = current_user.warehouses.build(warehouse_params)
    if @warehouse.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    @warehouse = Warehouse.find(params[:id]).includes(:user)
    if @warehouse.update(warehouse_params)
      redirect_to edit_warehouses_path
    else
      render :edit
    end
  end

  def show
    @deposits = Deposit.where(user_id: current_user.id).includes(:user)
  end

  private

  def warehouse_params
    params.require(:warehouse).permit(:quantity)
  end

end
