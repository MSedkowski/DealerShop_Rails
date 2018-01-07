class ChangeColumnNameInDiscounts < ActiveRecord::Migration[5.1]
  def self.up
	rename_column :cars_to_sell_discounts, :car_id, :cars_to_sell_id
  end

  def self.down

  end
end
