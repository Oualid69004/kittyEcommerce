class Item < ApplicationRecord

  has_many :orders
  has_many  :users, through: :orders
  #has_many :carts
  has_many :itemcarts
  has_many :carts, through: :itemcarts
    validates :title, presence: true
    validates :description, length: { minimum: 10, maximum: 200 }



end
