class CarsToSell < ApplicationRecord
	self.table_name = "cars_to_sell"
	has_and_belongs_to_many :discount
	belongs_to :ordered_car
end
