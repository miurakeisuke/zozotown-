ActiveAdmin.register Deposit do
  permit_params :name, :assesment_price, :user_id, :warehouse_id, :brand, :size

end
