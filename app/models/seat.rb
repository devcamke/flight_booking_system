class Seat < ApplicationRecord
  belongs_to :flight
  belongs_to :seat_type
end
