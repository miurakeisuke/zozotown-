class AddTablesToDeposits < ActiveRecord::Migration[5.2]
  def change
    add_column :deposits, :brand, :string, null: false, default: ""
    add_column :deposits, :size, :string, null: false, default: ""
  end
end
