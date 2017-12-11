class ServiceCenter < ApplicationRecord
  self.table_name = "service_center"
  belongs_to :client
  belongs_to :employee
  has_and_belongs_to_many :fault
end
