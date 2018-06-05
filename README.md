# README

# DB設計

## products
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|price|integer|null:false|
|point|integer|null:false|
|release_date|date||
|gender|string|null:false|
|product_status|boolean|null:false|
|description|text||
|stock|integer|null:false|
|staff_review_id|reference|foreign_key:true|
|shop_news_id|reference|foreign_key:true|
|coupon_id|reference|foreign_key:true|
|shop_id|reference|foreign_key:true|
|category_id|reference|foreign_key:true|
|color_id|reference|foreign_key:true|
|size_id|reference|foreign_key:true|
|brand_id|reference|foreign_key:true|
|product_like_id|reference|foreign_key:true|
|detail_id|reference|foreign_key:true|
|point_id|reference|foreign_key:true|
|order_id|reference|foreign_key:true|
|image_id|reference|foreign_key:true|
|products_users_id|reference|foreign_key:true|

### Association
- has_many   :staff_reviews
- has_many   :shop_news
- has_many   :coupons
- belongs_to :shop
- belongs_to :category
- has_many   :colors
- has_many   :sizes
- belongs_to :brand
- has_many   :product_likes
- has_one    :detail
- has_many   :points
- has_many   :orders
- has_many   :images
- has_many   :products_users
- has_many   :users, through: :products_users

## users
|Column|Type|Options|
|------|----|-------|
|email|string|null:false, unique: true|
|name|string|null:false|
|gender|string|null:false|
|password|text|null:false|
|address|text|null:false|
|postal_code|string|null:false|
|tel_number|string|null:false|
|credit_card_number|integer||
|point|integer|null:false|
|birthday|date|null:false|
|product_like_id|reference|foreign_key:true|
|brand_like_id|reference|foreign_key:true|
|shop_id|reference|foreign_key:true|
|oreder_id|reference|foreign_key:true|
|product_user_id|reference|foreign_key:true|
|point_id|reference|foreign_key:true|

### Association
- has_many   :product_likes
- has_many   :brand_likes
- has_many   :shop_likes
- has_many   :orders
- has_many   :products_users
- belongs_to :point
- has_many   :products, through: :products_users

## products_users
|Column|Type|Options|
|------|----|-------|
|product_id|reference|foreign_key:true|
|user_id|reference|foreign_key:true|

### Association
- belongs_to :user
- belongs_to :product

## product_likes
|Column|Type|Options|
|------|----|-------|
|product_id|reference|foreign_key:true|
|user_id|reference|foreign_key:true|

### Association
- belongs_to :product
- belongs_to :user

## shop_likes
|Column|Type|Options|
|------|----|-------|
|shop_id|reference|foreign_key:true|
|user_id|reference|foreign_key:true|

### Association
- belongs_to :shop
- belongs_to :user

## brand_likes
|Column|Type|Options|
|------|----|-------|
|brand_id|reference|foreign_key:true|
|user_id|reference|foreign_key:true|

### Association
- belongs_to :brand
- belongs_to :user

## orders
|Column|Type|Options|
|------|----|-------|
|order_number|integer|null:false|
|order_status|string|null:false|
|product_id|reference|foreign_key:true|
|user_id|reference|foreign_key:true|

### Association
- belongs_to :product
- belongs_to :user

## points
|Column|Type|Options|
|------|----|-------|
|point_count|integer|null:false|
|product_id|reference|foreign_key:true|
|user_id|reference|foreign_key:true|

### Association
- belongs_to :product
- belongs_to :user

## sizes
|Column|Type|Options|
|------|----|-------|
|size|string|null:false|
|product_id|reference|foreign_key:true|

### Association
- belongs_to :product

## categories
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|product_id|reference|foreign_key:true|

### Association
- has_many :products

## images
|Column|Type|Options|
|------|----|-------|
|url|text||
|product_id|reference|foreign_key:true|

### Association
- belongs_to :product

## staff_reviews
|Column|Type|Options|
|------|----|-------|
|thickness|string||
|opacity|string||
|stretch|string||
|soft|string||
|image_url|text||
|product_id|reference|foreign_key:true|

### Association
- belongs_to :product

## details
|Column|Type|Options|
|------|----|-------|
|material|string||
|country|string||
|delivery_date|date||
|postage|integer|null: false|
|gift|boolean|null: false|
|inquiry_number|integer|null: false|
|product_id|reference|foreign_key:true|

### Association
- belongs_to :product

## colors
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|product_id|reference|foreign_key:true|

### Association
- belongs_to :product

## shops
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|introduction|text||
|shop_brand_id|reference|foreign_key:true|
|product_id|reference|foreign_key:true|
|shop_news_id|reference|foreign_key:true|
|coupon_id|reference|foreign_key:true|

### Association
- has_many :shops_brands
- has_many :products
- has_many :shop_news
- has_many :coupons
- has_many :brands, through: :shops_brands

## brands
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|product_id|reference|foreign_key:true|
|shop_id|reference|foreign_key:true|
|brand_like_id|reference|foreign_key:true|

### Association
- has_many :brand_likes
- has_many :shops_brands
- has_many :brand_likes
- has_many :shops, through: :shops_brands

## shop_news
|Column|Type|Options|
|------|----|-------|
|news|string|null:false|
|image|text||
|product_id|reference|foreign_key:true|
|shop_id|reference|foreign_key:true|

### Association
- belongs_to :product
- belongs_to :shop

## coupons
|Column|Type|Options|
|------|----|-------|
|coupons_count|integer|null:false|
|product_id|reference|foreign_key:true|
|shop_id|reference|foreign_key:true|

### Association
- belongs_to :product
- belongs_to :shop
