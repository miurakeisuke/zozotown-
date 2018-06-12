class Brand < ApplicationRecord
  has_many :products
  has_many :shop_brands
  # has_many :brand_likes
  has_many :shops, through: :shop_brands
end
