class Cart < ApplicationRecord

  belongs_to :user, optional: true
  #has_many :items
  #belongs_to :item, optional: true

  has_many :itemcarts
  has_many :items, through: :itemcarts

  
  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

end
