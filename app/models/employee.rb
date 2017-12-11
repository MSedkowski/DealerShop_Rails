class Employee < ApplicationRecord
	has_many :client
	has_many :vacation_request
	has_many :vacation
	has_many :service_center
end
