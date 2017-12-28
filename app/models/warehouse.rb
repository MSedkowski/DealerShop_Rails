class Warehouse < ActiveRecord::Base
	self.table_name = "warehouse"
	has_many :supplies_warehouses
	has_many :supplies, through: :supplies_warehouses
end
