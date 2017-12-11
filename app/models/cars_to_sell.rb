class CarsToSell < ApplicationRecord
	has_and_belongs_to_many :discount
	belongs_to :ordered_car
end
