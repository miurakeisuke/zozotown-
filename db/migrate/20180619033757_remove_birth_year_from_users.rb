class RemoveBirthYearFromUsers < ActiveRecord::Migration[5.2]
  def up
    remove_column :users, :Birth_year
  end

  def down
    add_column :users, :Birth_year, :date
  end
end
