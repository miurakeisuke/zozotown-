class RemoveReferenceCartIdToProduct < ActiveRecord::Migration[5.2]
  def change
    remove_reference :products, :cart
  end
end
