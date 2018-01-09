class Fault < ApplicationRecord
	has_many :service_faults
	has_many :service_centers, through: :service_faults, dependent: :destroy
end
