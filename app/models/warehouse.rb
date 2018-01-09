class Warehouse < ActiveRecord::Base
	self.table_name = "warehouse"
	has_many :supplies_warehouses, dependent: :destroy
	has_many :supplies, through: :supplies_warehouses

end
