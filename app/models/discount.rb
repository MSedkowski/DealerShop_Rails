class Discount < ApplicationRecord
	has_many :cars_to_sell_discounts
	has_many :cars_to_sells, through: :cars_to_sell_discounts
	accepts_nested_attributes_for :cars_to_sell_discounts, reject_if: :all_blank, allow_destroy: true

	def combined_value
		"#{self.name} | #{self.percentage_value}"
	end
end

