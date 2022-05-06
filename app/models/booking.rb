class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  # address must be provided
  validates :address, length: { minimum: 6 }
  validates :booking_date, presence: true

  validates :start_time, :end_time, presence: true
  validate :end_time_after_start_time

  private

  # start time must be before end time
  def end_time_after_start_time
    return if end_time.blank? || start_time.blank?

    if end_time < start_time
      errors.add(:end_time, 'must be after the start time')
    end
  end
end
