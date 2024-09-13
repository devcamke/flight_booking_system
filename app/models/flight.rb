class Flight < ApplicationRecord
  belongs_to :airline
  has_many :seats
  has_many :bookings

  validates :number, :departure, :arrival, :origin, :destination, presence: true
  validate :arrival_after_departure

  private

  def arrival_after_departure
    if arrival && departure && arrival <= departure
      errors.add(:arrival, "must be after departure time")
    end
  end
end
