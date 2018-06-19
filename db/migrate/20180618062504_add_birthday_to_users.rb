class AddBirthdayToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :birthday, :date, default: 0000
  end
end
