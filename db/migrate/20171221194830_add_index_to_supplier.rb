class AddIndexToSupplier < ActiveRecord::Migration[5.1]
  def change
    add_index :suppliers, :data, unique: true
  end
end
