class AddProductToSupplies < ActiveRecord::Migration[5.1]
  def change
    add_column :supplies, :product, :string
  end
end
