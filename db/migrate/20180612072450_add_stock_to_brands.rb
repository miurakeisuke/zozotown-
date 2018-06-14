class AddStockToBrands < ActiveRecord::Migration[5.2]
  def change
    add_reference :shops, :brand, foreign_key: true
  end
end
