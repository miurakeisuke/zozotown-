class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :birth_year, :string, null: false, default: ""
    add_column :users, :birth_month, :string, null: false, default: ""
    add_column :users, :birth_day, :string, null: false, default: ""
  end
end
