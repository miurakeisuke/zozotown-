class Warehouse < ApplicationRecord
  has_many :deposits
  belongs_to :user
end
