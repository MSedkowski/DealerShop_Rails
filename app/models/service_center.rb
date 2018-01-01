class ServiceCenter < ApplicationRecord
  self.table_name = "service_center"
  belongs_to :client
  belongs_to :employee
  has_many :service_faults
  has_many :faults, through: :service_faults
  accepts_nested_attributes_for :service_faults, reject_if: :all_blank
end
