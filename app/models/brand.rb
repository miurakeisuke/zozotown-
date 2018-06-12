class Brand < ApplicationRecord
  has_many :products, :dependent => :destroy
  has_many :shop_brands, :dependent => :destroy
  # has_many :brand_likes
  has_many :shops, through: :shop_brands
end
