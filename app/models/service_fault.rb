class ServiceFault < ApplicationRecord
  belongs_to :service
  belongs_to :fault
end
