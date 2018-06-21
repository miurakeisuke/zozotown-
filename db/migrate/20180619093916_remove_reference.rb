class RemoveReference < ActiveRecord::Migration[5.2]
  def change
    remove_reference :brands, :shop
    remove_reference :brands, :product
    remove_reference :shops, :brand
    remove_reference :shops, :product
    remove_reference :carts, :product
    add_reference :products, :shop, foreign_key: true
  end
end
