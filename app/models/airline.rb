class Airline < ApplicationRecord
  has_many :flights
  validates :name, presence: true, uniqueness: true
end
