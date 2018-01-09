class ChangeColumnNameInVacations < ActiveRecord::Migration[5.1]
  def self.up
	rename_column :vacations, :beginning_date, :start_date
  end

  def self.down

  end
end
