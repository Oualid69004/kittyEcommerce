class Item < ApplicationRecord

  has_many :orders
  has_many  :users, through: :orders
  has_many :carts

    validates :title, presence: true
    validates :description, length: { minimum: 10, maximum: 200 }



end
