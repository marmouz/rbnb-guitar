class Guitar < ApplicationRecord
  LEVEL = ["beginner", "middle", "expert"]
  belongs_to :user
  has_many :bookings

  validates :model, :brand, :genre, :price_per_day, presence: true
  validates :level, inclusion: { in: LEVEL }
end
