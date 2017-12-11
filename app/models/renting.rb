class Renting < ApplicationRecord
  belongs_to :rental_car
  belongs_to :client
end
