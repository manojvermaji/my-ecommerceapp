class Product < ApplicationRecord
  validates :name, :desc, :price, presence: true
  has_many :carts
  has_many :orders
  has_many :user, through::order, source::product

end
