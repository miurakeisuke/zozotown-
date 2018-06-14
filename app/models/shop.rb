class Shop < ApplicationRecord
  has_many :shop_brands, :dependent => :destroy
  has_many :products, :dependent => :destroy
  # has_many :shop_news
  # has_many :coupons
  has_many :brands, through: :shop_brands
end
