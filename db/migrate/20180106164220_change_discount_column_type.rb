class ChangeDiscountColumnType < ActiveRecord::Migration[5.1]
  	def self.up
    change_table :discounts do |t|
      t.change :percentage_value, :integer
    end
  end
  def self.down
    change_table :discounts do |t|
      t.change :percentage_value, :integer
    end
  end
end
