class Order < ApplicationRecord
  belongs_to :user, index: true
  belongs_to :item, index: true
end
