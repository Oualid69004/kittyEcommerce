class Item < ApplicationRecord
validates :title, presence: true,
validates :description, length: { minimum: 200 },

end
