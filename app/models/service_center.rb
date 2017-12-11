class ServiceCenter < ApplicationRecord
  belongs_to :client
  self.table_name = "service_center"
end
