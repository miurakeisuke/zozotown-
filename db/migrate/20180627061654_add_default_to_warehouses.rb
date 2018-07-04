class AddDefaultToWarehouses < ActiveRecord::Migration[5.2]
  def change
    change_column_default :warehouses, :quantity, 0
  end
end
