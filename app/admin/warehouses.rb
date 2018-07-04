ActiveAdmin.register Warehouse do
  permit_params :quantity

  index do
    selectable_column
    id_column
    column :quantity
    column :created_at
    column :updated_at
    actions
  end

  show do |warehouse|
    attributes_table(*warehouse.class.columns.collect { |column| column.name.to_sym })
    panel "お預かり品一覧" do
      table_for warehouse.deposits do
        column :name
        column :assesment_price
        column :user_id
        column :warehouse_id
        column :brand
        column :size
      end
    end
    active_admin_comments
  end

  class Warehouse < ApplicationRecord
    has_many :deposits
  end

end
