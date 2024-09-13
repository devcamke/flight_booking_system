class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flight
  belongs_to :seat

  validates :user_id, :flight_id, :seat_id, presence: true
  validate :seat_available

  private

  def seat_available
    unless seat.available?
      errors.add(:seat, "is not available")
    end
  end
end
