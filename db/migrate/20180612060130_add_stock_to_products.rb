class AddStockToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column    :products, :stock, :integer, null: false
    add_column    :products, :release_date, :date
    add_column    :products, :gender, :string, null: false
    add_column    :products, :product_status, :boolean, null: false
  end
end
