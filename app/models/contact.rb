class Contact < ApplicationRecord
  belongs_to :product
  validates :content, presence: true, length: { maximum: 30 }
end
