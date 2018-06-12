class AddIdToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :color, foreign_key: true
    add_reference :products, :size, foreign_key: true
    add_reference :products, :brand, foreign_key: true
    add_reference :products, :cart, foreign_key: true
    add_reference :products, :image, foreign_key: true
  end
end
