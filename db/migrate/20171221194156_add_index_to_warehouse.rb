class AddIndexToWarehouse < ActiveRecord::Migration[5.1]
  def change
    add_index :warehouse, :element, unique: true
  end
end
