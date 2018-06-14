class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.integer :quantity
      t.references :product, foreign_key: true
      # userのヒモ付も必要
      t.timestamps
    end
  end
end
