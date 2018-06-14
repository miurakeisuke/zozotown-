# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false, unique: true
      t.string :name, null: false
      t.string :gender, null: false
      t.text :password, null: false
      t.text :address, null: false
      t.string :postal_code, null: false
      t.string :tel_number, null: false
      t.integer :credit_card_number
      t.integer :point, null: false
      t.date :birthday, null: false
      # 以下はまだモデルを作成していないので後で追加してください！byおおかわ
      # t.reference :product_like_id, foreign_key: true
      # t.reference :brand_like_id, foreign_key: true
      # t.reference :shop_id, foreign_key: true
      # t.reference :order_id, foreign_key: true
      # t.reference :product_user_id, foreign_key: true
      # t.reference :point_id, foreign_key: true
    end
  end
end
