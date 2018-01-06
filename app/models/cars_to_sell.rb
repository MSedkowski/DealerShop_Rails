class CarsToSell < ApplicationRecord
	self.table_name = "cars_to_sell"
	has_many :ordered_cars
	has_many :clients, through: :ordered_cars
	has_many :cars_to_sell_discounts
	has_and_belongs_to_many :discount

	def combined_value
		"#{self.brand} | #{self.model}"
	end
end
