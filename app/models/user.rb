class User < ApplicationRecord
  has_many :reviews
  has_many :bookings
  has_many :guitars
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # validates :description, presence: true
  # validates :photo, presence: true
  mount_uploader :photo, PhotoUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def my_guitar_reviews
    test = self.guitars.map { |guitar| guitar.bookings.map { |booking| booking.reviews }}
    test.flatten
  end
end
