class ServiceFault < ApplicationRecord
  belongs_to :service_center
  belongs_to :fault
  accepts_nested_attributes_for :fault
end