class OrderedCar < ApplicationRecord
  belongs_to :cars_to_sell
  belongs_to :client

  def percent
    value = 0
    self.cars_to_sell.discount.each do |discount|
      value += discount.percentage_value
    end
    return value
  end

  def promotion_price
    value = self.cars_to_sell.price - (self.cars_to_sell.price * self.percent / 100)
    return value
  end
end
