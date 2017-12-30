class FixClientColumnName < ActiveRecord::Migration[5.1]
  def self.up
	rename_column :clients, :employee, :employee_id
  end

  def self.down

  end
end
