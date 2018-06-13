class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :name, null: false
      t.references :product, foreign_key: true
      # shopnewsとcoupenは別途追加
      t.timestamps
    end
  end
end
