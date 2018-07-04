class AddQuantitiesToWarehouses < ActiveRecord::Migration[5.2]
  def change
    add_column :warehouses, :quantity, :integer
  end
end
