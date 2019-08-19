class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :guitar
  has_many :reviews
end
