class CreateSuppliesWarehousesTable < ActiveRecord::Migration[5.1]
  def self.up
    create_table :supplies_warehouses do |t|
	t.references :supply
	t.references :warehouse
	t.integer :amount
    end
  end
end
