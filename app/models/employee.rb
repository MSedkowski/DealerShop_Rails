class Employee < ApplicationRecord
	has_many :client
	has_many :vacation_request
	has_many :vacation
	has_many :service_center

	def combined_value
		"#{self.name} #{self.surname} | #{self.position}"
	end

	def combined_name
		"#{self.name} #{self.surname}"
	end
end

