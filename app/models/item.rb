class Item < ApplicationRecord
  validates :title, presence: true
  validates :description, length: { minimum: 10, maximum: 200 }

  has_many :orders
  has_many  :users, through: :orders

  has_many :itemcarts
  has_many :carts, through: :itemcarts
end
