class Guitar < ApplicationRecord
  LEVEL = ["beginner", "middle", "expert"]
  GENRE = ["bass", "acoustic", "electric", "classic", "12-strings"]
  belongs_to :user
  has_many :bookings

  validates :model, :brand, :price_per_day, :description, presence: true
  validates :level, inclusion: { in: LEVEL }
  validates :genre, inclusion: { in: GENRE }
  validates :photo, presence: true
  mount_uploader :photo, PhotoUploader
end
