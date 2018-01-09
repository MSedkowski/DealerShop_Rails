class Client < ApplicationRecord
	has_many :ordered_car
	has_many :renting
	has_many :service_center
	belongs_to :employee, dependent: :destroy

	def combined_value
		"#{self.name} #{self.surname}"
	end

end

