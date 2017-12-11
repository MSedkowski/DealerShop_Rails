class OrderedCar < ApplicationRecord
  has_many :cars_to_sell
  belongs_to :client
end
