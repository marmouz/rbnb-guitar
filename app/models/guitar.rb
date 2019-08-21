class Guitar < ApplicationRecord
  LEVEL = ["beginner", "middle", "expert"]
  GENRE = ["bass", "acoustic", "electric", "classic", "12-strings"]
  belongs_to :user
  has_many :bookings

  validates :model, :brand, :genre, :price_per_day, presence: true
  validates :level, inclusion: { in: LEVEL }
end
