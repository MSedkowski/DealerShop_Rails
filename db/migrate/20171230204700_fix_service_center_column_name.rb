class FixServiceCenterColumnName < ActiveRecord::Migration[5.1]
  def self.up
	rename_column :service_center, :mechanic, :employee_id
  end

  def self.down

  end
end
