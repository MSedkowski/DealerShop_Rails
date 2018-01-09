class Employee < ApplicationRecord
	has_many :client
	has_many :vacation_request, dependent: :destroy
	has_many :vacation, dependent: :destroy
	has_many :service_center, dependent: :destroy

	def combined_value
		"#{self.name} #{self.surname} | #{self.position}"
	end

	def combined_name
		"#{self.name} #{self.surname}"
	end
end

