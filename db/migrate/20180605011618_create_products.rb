class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      # DBはView作成のため、一時的に作成
      # genderやnew/usedの記載方法（0,1 or men,women）は後ほど決定する
      t.string :name, null: false
      t.text :description
      t.integer :price, null: false
      t.integer :point, null: false
      t.timestamps
    end
  end
end
