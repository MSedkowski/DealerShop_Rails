class DropSuppliesElementsTable < ActiveRecord::Migration[5.1]
  def up
    drop_table :SuppliesWarehouses
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
