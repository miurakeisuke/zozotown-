class Brand < ApplicationRecord
  has_many :products
  has_many :shop_brand
  has_many :brand_likes
  has_many :shops, through: :shop_brand
end
