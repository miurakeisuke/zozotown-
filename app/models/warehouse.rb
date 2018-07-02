class Warehouse < ApplicationRecord
  has_many :deposits, dependent: :destroy
  belongs_to :user
end
