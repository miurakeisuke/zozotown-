class RemoveQuantityToCart < ActiveRecord::Migration[5.2]
  def change
    remove_column :carts, :quantity, :integer
  end
end
