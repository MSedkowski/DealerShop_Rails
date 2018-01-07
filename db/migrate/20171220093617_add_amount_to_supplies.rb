class AddAmountToSupplies < ActiveRecord::Migration[5.1]
  def change
    add_column :supplies, :amount, :integer
  end
end
