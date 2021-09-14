class Product < ApplicationRecord
  belongs_to :category

  validates :name, presence: true

  has_one_attached :product_front
  has_one_attached :product_back
end
