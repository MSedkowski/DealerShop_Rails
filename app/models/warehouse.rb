class Warehouse < ApplicationRecord
	self.table_name = "warehouse"
	has_and_belongs_to_many :supply
end
