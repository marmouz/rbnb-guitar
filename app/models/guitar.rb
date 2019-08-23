class Guitar < ApplicationRecord
  LEVEL = ["beginner", "middle", "expert"]
  GENRE = ["basse", "accoustique", "electrique", "classique", "12 cordes"]
  belongs_to :user
  has_many :bookings

  validates :model, :brand, :price_per_day, presence: true
  # validates :description, presence: true
  validates :level, inclusion: { in: LEVEL }
  validates :genre, inclusion: { in: GENRE }
  # validates :photo, presence: true
  mount_uploader :photo, PhotoUploader
end
