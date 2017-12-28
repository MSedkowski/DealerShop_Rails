class DropSuppliesWarehouse < ActiveRecord::Migration[5.1]
  def up
    drop_table :supplies_warehouses
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
