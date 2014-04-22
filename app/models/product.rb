class Product < ActiveRecord::Base
  has_many :product_images, dependent: :destroy
  has_many :line_items
  belongs_to :product_category
end
