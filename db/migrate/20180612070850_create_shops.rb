class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name, null: false
      t.text :introduction
      t.references :product, foreign_key: true
      # shopnewsとcoupenは別途追加
      t.timestamps
    end
  end
end
