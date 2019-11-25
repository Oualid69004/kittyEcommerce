class Item < ApplicationRecord
<<<<<<< HEAD
  has_many :orders
  has_many  :users, through: :orders
  has_many :carts
=======
    validates :title, presence: true,
    validates :description, length: { minimum: 200 },

    has_many :orders
    has_many  :users, through: :orders
    has_many :carts
>>>>>>> 4444c6ddf3f3ae928c538d63725ea7fc04bb0c69
end
