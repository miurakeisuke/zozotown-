class Contact < ApplicationRecord
  belongs_to :product
  belongs_to :user
  validates :content, presence: true, length: { maximum: 30 }
end
