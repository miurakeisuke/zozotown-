class Product < ApplicationRecord
  has_many :staff_reviews
  has_many :shop_news
  has_many :coupons
  belongs_to :shop
  belongs_to :category
  has_many :colors
  has_many :sizes
  belongs_to :brand
  has_many :product_likes
  has_one :detail
  has_many :points
  has_many :orders
  has_many :images
  has_many :products_users
  has_many :users, through: :products_users
end
