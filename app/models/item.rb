class Item < ApplicationRecord
    validates :title, presence: true,
    validates :description, length: { minimum: 200 },

    has_many :orders
    has_many  :users, through: :orders
    has_many :carts
end
