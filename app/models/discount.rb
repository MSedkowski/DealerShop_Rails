class Discount < ApplicationRecord
	has_and_belongs_to_many :cars_to_sell
end
