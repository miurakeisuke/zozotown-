class AddReferencesToDeposits < ActiveRecord::Migration[5.2]
  def change
    add_reference :deposits, :user, foreign_key: true
    add_reference :deposits, :warehouse, foreign_key: true
  end
end
