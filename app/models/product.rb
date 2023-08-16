class Product < ApplicationRecord
  belongs_to :product_category
  has_many :cart_items
  has_many :order_items
  
  # Validations
  validates :name, presence: true
  validates :description, presence: true
  validates :sku, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
