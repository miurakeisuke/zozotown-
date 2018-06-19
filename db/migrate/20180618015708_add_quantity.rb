class AddQuantity < ActiveRecord::Migration[5.2]
  def change
    add_column :product_carts, :quantity, :integer, default: 1, null: false
  end
end
