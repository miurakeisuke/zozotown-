class AddTimestampToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :created_at, :datetime, default: '2018-05-26 08:15:41', null: false
    add_column :users, :updated_at, :datetime, default: '2018-05-26 08:15:41', null: false
  end
end
