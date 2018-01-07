class CarsToSellDiscount < ApplicationRecord
  belongs_to :cars_to_sell
  belongs_to :discount
end