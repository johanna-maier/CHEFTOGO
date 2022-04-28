class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  # address must be provided
  validates :address, length: { minimum: 6 }
  validates :booking_date, presence: true

  # start time must be before end time
  validates :start_time, :end_time, presence: true
  # validates :comment, presence: true
end
