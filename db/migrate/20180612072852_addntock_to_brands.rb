class AddntockToBrands < ActiveRecord::Migration[5.2]
  def change
    add_reference :brands, :shop, foreign_key: true
  end
end
