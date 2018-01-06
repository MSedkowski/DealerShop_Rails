class AddCarIdToDiscounts < ActiveRecord::Migration[5.1]
  def change
    add_column :discounts, :car_id, :integer
  end
end
