class CreateDeposits < ActiveRecord::Migration[5.2]
  def change
    create_table :deposits do |t|
      t.string :name, null: false, default: ""
      t.integer :assesment_price, null: false, default: 0

      t.timestamps null: false, default: 0
    end
  end
end
