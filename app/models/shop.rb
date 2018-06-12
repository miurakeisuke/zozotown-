class Shop < ApplicationRecord
  has_many :shop_brand
  has_many :products
  has_many :shop_news
  has_many :coupons
  has_many :brands, through: :shop_brand
end
