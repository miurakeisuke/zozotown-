class RemoveReferenceSizeIdColorIdImageIdToProduct < ActiveRecord::Migration[5.2]
  def change
    remove_reference :products, :image
    remove_reference :products, :color
    remove_reference :products, :size
  end
end
