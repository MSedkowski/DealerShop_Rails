class ServiceCenter < ApplicationRecord
  belongs_to :client
  belongs_to :employee
  has_and_belongs_to_many :fault
end
