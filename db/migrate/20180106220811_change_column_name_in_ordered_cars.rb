class ChangeColumnNameInOrderedCars < ActiveRecord::Migration[5.1]
  def self.up
	rename_column :ordered_cars, :car_id, :cars_to_sell_id
  end

  def self.down
	rename_column :ordered_cars, :car_id, :cars_to_sell_id
  end
end
