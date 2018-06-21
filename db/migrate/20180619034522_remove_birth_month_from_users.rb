class RemoveBirthMonthFromUsers < ActiveRecord::Migration[5.2]
  def up
    remove_column :users, :Birth_month
  end

  def down
    add_column :users, :Birth_month, :date
  end
end
