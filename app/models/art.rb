class Art < ApplicationRecord
  belongs_to :user
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_many :bookings

  has_one_attached :photo
  PAINT_TYPES = ["Oil on canvas", "Aquarel", "Handdrawn"]
end
