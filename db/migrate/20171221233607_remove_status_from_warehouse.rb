class RemoveStatusFromWarehouse < ActiveRecord::Migration[5.1]
  def change
    remove_column :warehouse, :status, :string
  end
end
