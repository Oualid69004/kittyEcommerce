class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
<<<<<<< HEAD
         :recoverable, :rememberable, :validatable#, :confirmable
  has_one_attached :avatar
=======
         :recoverable, :rememberable, :validatable, :confirmable

>>>>>>> 07c4c8ead70318ff7c3ee67c9b2b2621987e8007
  belongs_to :cart, optional: true
  has_many :orders
  has_many  :items, through: :orders

  after_create :welcome_send

  def welcome_send
   UserMailer.welcome_email(self).deliver_now
  end


end
