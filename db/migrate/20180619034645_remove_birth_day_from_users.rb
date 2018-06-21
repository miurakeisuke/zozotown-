class RemoveBirthDayFromUsers < ActiveRecord::Migration[5.2]
  def up
    remove_column :users, :Birth_day
  end

  def down
    add_column :users, :Birth_day, :date
  end
end
