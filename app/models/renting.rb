class Renting < ApplicationRecord
  self.table_name = "rentings"
  belongs_to :rental_car
  belongs_to :client
end
