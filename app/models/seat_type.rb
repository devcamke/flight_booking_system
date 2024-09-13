class SeatType < ApplicationRecord
  has_many :seats
  validates :name, presence: true, uniqueness: true
end
