class CarsToSellDiscount < ApplicationRecord
  belongs_to :car
  belongs_to :discount
end
