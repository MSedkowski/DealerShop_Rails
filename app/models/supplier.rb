class Supplier < ApplicationRecord
	has_many :supply, dependent: :destroy

	def combined_value
		"#{self.data} | #{self.products}"
	end
end
