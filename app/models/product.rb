class Product < ApplicationRecord
  # has_many :staff_reviews
  # has_many :shop_news
  # has_many :coupons
  belongs_to :shop
  # belongs_to :category
  has_many :colors, :dependent => :destroy
  has_many :sizes, :dependent => :destroy
  belongs_to :brand
  # has_many :product_likes
  # has_one :detail
  # has_many :points
  # has_many :orders
  has_many :images, :dependent => :destroy
  # has_many :products_users
  # has_many :users, through: :products_users
  has_many :product_carts, :dependent => :destroy
  has_many :carts, through: :product_carts
end
