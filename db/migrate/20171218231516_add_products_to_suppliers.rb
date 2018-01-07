class AddProductsToSuppliers < ActiveRecord::Migration[5.1]
  def change
    add_column :suppliers, :products, :string
  end
end
