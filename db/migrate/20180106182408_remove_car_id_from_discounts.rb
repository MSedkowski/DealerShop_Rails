class RemoveCarIdFromDiscounts < ActiveRecord::Migration[5.1]
def up
    remove_column :discounts, :car_id, :integer
  end

  def down
    remove_column :discounts, :car_id, :integer
  end
end
