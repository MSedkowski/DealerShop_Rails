class OrderedCar < ApplicationRecord
  belongs_to :cars_to_sell
  belongs_to :client
end
