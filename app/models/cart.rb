class Cart < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user
  has_many :items
  belongs_to :item
=======
  belongs_to :user, optional: true
  #has_many :items
  belongs_to :item, optional: true
>>>>>>> 4444c6ddf3f3ae928c538d63725ea7fc04bb0c69


end
