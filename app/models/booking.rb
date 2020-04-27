class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :art

  validates :start_date, :end_date, :start_hour, :end_hour, presence: true
end
