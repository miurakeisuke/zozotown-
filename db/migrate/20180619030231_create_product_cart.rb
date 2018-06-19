class CreateProductCart < ActiveRecord::Migration[5.2]
  def change
    create_table :product_carts do |t|
      t.references :product, foreign_key: true
      t.references :cart, foreign_key: true
      t.integer :quantity, default: 1, null: false
      t.timestamps null: false
    end
  end
end
