class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :product_likes
  has_many :brand_likes
  has_many :shop_likes
  has_many :orders
  has_many :products_users
  belongs_to :point
  has_many :products, through: :products_users
end
