class Seat < ApplicationRecord
  belongs_to :flight
  belongs_to :seat_type
  has_one :booking

  enum status: { available: 0, pending_approval: 1, approved: 2, sold: 3 }

  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
