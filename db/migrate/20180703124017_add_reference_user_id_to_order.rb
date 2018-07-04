class AddReferenceUserIdToOrder < ActiveRecord::Migration[5.2]
  def change
    remove_reference :orders, :cart
    add_reference :orders, :user, foreign_key: true
  end
end
