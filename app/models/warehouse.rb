class Warehouse < ApplicationRecord
	self.table_name = "warehouse"
	has_many :supplies_elements

end
