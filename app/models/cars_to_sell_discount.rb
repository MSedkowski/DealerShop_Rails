class CarsToSellDiscount < ApplicationRecord
  belongs_to :cars_to_sell
  belongs_to :discount
  accepts_nested_attributes_for :cars_to_sell
end