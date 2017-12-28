class Supplier < ApplicationRecord
	has_many :supply

	def combined_value
		"#{self.data} | #{self.products}"
	end
end
