class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :product_likes, :dependent => :destroy
  has_many :brand_likes, :dependent => :destroy
  has_many :shop_likes, :dependent => :destroy
  has_many :orders, :dependent => :destroy
  has_many :products_users, :dependent => :destroy
  belongs_to :point
  has_many :products, through: :products_users
  has_one :cart
end
